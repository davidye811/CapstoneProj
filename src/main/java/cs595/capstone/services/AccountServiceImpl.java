package cs595.capstone.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cs595.capstone.dao.AccountDAO;
import cs595.capstone.dao.MovieDAO;
import cs595.capstone.domain.Account;
@Service
@Transactional
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	@Qualifier("accountDaoJdbc")
	private AccountDAO accountDao;
	@Override
	public void registerNewAccount(Account account) {
		accountDao.registerNewAccount(account);
	}
	@Override
	public boolean login(Account account) {
		
		return accountDao.login(account);
	}

}
