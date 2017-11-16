package cs595.capstone.services;

import cs595.capstone.domain.Account;

public interface AccountService {
	public void registerNewAccount(Account account);
	public boolean login(Account account);
}
