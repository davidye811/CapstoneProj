package cs595.capstone.dao.jdbc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import cs595.capstone.dao.AccountDAO;
import cs595.capstone.domain.Account;
import edu.npu.courseapp.domain.Gender;
import edu.npu.courseapp.domain.Student;
@Repository("accountDaoJdbc")
public class AccountDaoJdbcImpl implements AccountDAO{
	@Autowired
	@Qualifier("dataSource")
	private DataSource dataSource;
	
	private JdbcTemplate jdbcTemplate;
	private NamedParameterJdbcTemplate dbTemplate;
	private SimpleJdbcInsert jdbcInsert;
	@PostConstruct
	public void setup() {
		jdbcTemplate = new JdbcTemplate(dataSource);
		dbTemplate = new NamedParameterJdbcTemplate(dataSource);
		jdbcInsert = new SimpleJdbcInsert(dataSource)
		                 .withTableName("account")
		                 .usingGeneratedKeyColumns("account_id")
		                 .usingColumns("DOB","age","gender","pwd","email","account_name")
		                 ;
	}
	@Override
	public void registerNewAccount(Account account) {
//		SqlParameterSource params = new BeanPropertySqlParameterSource(account);
	    Number newId = jdbcInsert.executeAndReturnKey(getAccounttParams(account));
	    
	    account.setAccountId(newId.intValue());
	}
	public Map<String, Object> getAccounttParams(Account account) {
		Map<String, Object> accdParams = new HashMap<String, Object>();
		Gender genderVal;
		int genderIntVal;
		
		accdParams.put("account_name", account.getAccountName());
		accdParams.put("pwd", (account.getAccountName()+account.getPassword()).hashCode());
		accdParams.put("email", account.getEmail());
		

		return accdParams;
	}
	@Override
	public boolean login(Account account) {
		String result = jdbcTemplate.queryForObject("SELECT  pwd  from account where account_name=?", String.class,account.getAccountName());  
		System.out.println(result);
		int result2=((account.getAccountName()+account.getPassword()).hashCode());
		if(result==null||Integer.parseInt(result)!=result2)
		 return false;
		return true;
		
	}

}
