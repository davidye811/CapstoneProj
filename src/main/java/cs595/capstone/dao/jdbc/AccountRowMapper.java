package cs595.capstone.dao.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import cs595.capstone.domain.Account;
import cs595.capstone.domain.Movie;

public class AccountRowMapper implements RowMapper<Account> {
	public Account mapRow(ResultSet resultSet, int row) throws SQLException {
		return null;

		
	}

}
