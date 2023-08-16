package com.sharayu.firstjpademo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sharayu.firstjpademo.entities.Account;
import com.sharayu.firstjpademo.entities.Employee;
import com.sharayu.firstjpademo.entities.Job;
import com.sharayu.firstjpademo.repositories.AccountRepository;
import com.sharayu.firstjpademo.repositories.EmpRepository;
import com.sharayu.firstjpademo.repositories.JobRepository;

@Controller
public class SharayuController {
	
	@Autowired
	private AccountRepository accrepo;
	
	@Autowired
	private EmpRepository emprepo;
	
	@Autowired
	private JobRepository jobrepo;
	
	@GetMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	
	@GetMapping("/newacc")
	public String newAccount()
	{
		return "NewAccount.jsp";
	}
	
	@PostMapping("/addacc")
	public String addNewAccount(Account obj)
	{
		//System.out.println(obj.getAccno()+" | "+obj.getAccnm()+" | "+obj.getAcctype()+" | "+obj.getBalance());
		accrepo.save(obj);
		return "AccountAdded.jsp";
	}
	
	@GetMapping("/newemp")
	public String newEmp()
	{
		return "NewEmployee.jsp";
	}
	
	@PostMapping("/addemp")
	public String addNewEmp(Employee e)
	{
		emprepo.save(e);
		return "EmpAdded.jsp";
	}
	
	@GetMapping("/allemp")
	public ModelAndView showAllEmp()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("EmpReport.jsp");
		List<Employee> emplist=emprepo.findAll();
		System.out.println(emplist.size());
		mv.addObject("emplist",emplist);
		return mv;
	}
	
	@GetMapping("/allacc")
	public ModelAndView showAllAcc()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AccReport.jsp");
		List<Account> acclist=accrepo.findAll();
		System.out.println(acclist.size());
		mv.addObject("acclist",acclist);
		return mv;
	}
	
	@PostMapping("/searchno")
	public ModelAndView searchNumber(int accno)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AccReport.jsp");
		Account acc=accrepo.findByAccno(accno);
		System.out.println(acc.getAccnm());
		System.out.println(acc.getBalance());
		List<Account> acclist=new ArrayList<>();
		acclist.add(acc);
		mv.addObject("acclist", acclist);
		return mv;
	}
	
	@PostMapping("/searchtype")
	public ModelAndView searchType(String acctype)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AccReport.jsp");
		List<Account> acclist=accrepo.findByAcctype(acctype);
		mv.addObject("acclist", acclist);
		
		return mv;
	}
		
	@PostMapping("/deposit")
	public String depositAmount(int accno,float amount)
	{
		Account obj=accrepo.findByAccno(accno);
		obj.setBalance(obj.getBalance()+amount);
		accrepo.save(obj);
		System.out.println("deposit successful");
		return "index.jsp";
		
	}
	
	@PostMapping("/withdraw")
	public String withdrawAmount(int accno,float amount)
	{
		Account obj=accrepo.findByAccno(accno);
		obj.setBalance(obj.getBalance()-amount);
		accrepo.save(obj);
		System.out.println("withdraw successful");
		return "index.jsp";
		
	}
	
	@GetMapping("/empdelete")
	public String empDelete()
	{
		return "EmpDelete.jsp";
	}
	
	@PostMapping("/delemp")
	public String delEmp(int empno)
	{
		Employee e=emprepo.findByEmpno(empno);
		System.out.println(e.getEmpnm());
		emprepo.delete(e);
		return "EmpDeleted.jsp";
	}
	
	@GetMapping("/newjob")
	public String newJob()
	{
		return "NewJobEntry.jsp";
	}
	
	@PostMapping("/addjob")
	public String addJob(Job j)
	{
		jobrepo.save(j);
		return "JobAdded.jsp";
	}
	
}
