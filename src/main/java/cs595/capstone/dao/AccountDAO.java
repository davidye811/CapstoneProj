package cs595.capstone.dao;

import cs595.capstone.domain.Account;

public interface AccountDAO {
	public void registerNewAccount(Account account);
	public boolean login(Account account);
}
