package city.turtle.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import city.turtle.service.GraphService;
import city.turtle.vo.GraphVO;

@Controller
public class GraphController {
	
	@Autowired
	private GraphService mapper;
	
	@RequestMapping("/countTurtle.do")
	public @ResponseBody List<GraphVO> countTurtle(Model model, GraphVO vo) throws Exception {
		List<GraphVO> turtle = mapper.countTurtle(vo);
		model.addAttribute("turtle", turtle);
		return turtle;
	}
	
	@RequestMapping("/countSum.do")
	public @ResponseBody List<Integer> countSum(GraphVO vo) throws Exception{

		List<Integer> sumSum = new ArrayList<>();
		for(int i =0; i <22;i+=7) {
			sumSum.add(0, mapper.countSum(vo, i));
		}
		
		return sumSum;
	}
	
	
}
