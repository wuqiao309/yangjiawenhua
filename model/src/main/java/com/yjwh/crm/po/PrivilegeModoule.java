package com.yjwh.crm.po;

import java.util.ArrayList;
import java.util.List;

import com.yjwh.crm.model.Privilege;

public class PrivilegeModoule {
	Privilege father;
	List<Privilege> sons = new ArrayList<>();

	public Privilege getFather() {
		return father;
	}

	public void setFather(Privilege faher) {
		this.father = faher;
	}

	public List<Privilege> getSons() {
		return sons;
	}

	public void setSons(List<Privilege> sons) {
		this.sons = sons;
	}

	public PrivilegeModoule(Privilege faher) {
		this.father = faher;
	}

	public PrivilegeModoule() {

	}
}
