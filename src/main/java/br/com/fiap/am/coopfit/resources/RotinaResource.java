package br.com.fiap.am.coopfit.resources;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.com.fiap.am.coopfit.domain.Rotina;
import br.com.fiap.am.coopfit.services.RotinaService;

@RestController
@RequestMapping(value="/rotinas")
public class RotinaResource {

	
	@Autowired
	private RotinaService service;
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public ResponseEntity<Rotina> find(@PathVariable Long id) {
		Rotina obj = service.find(id);
		return ResponseEntity.ok().body(obj);
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<Void> insert(@RequestBody Rotina obj){
		obj = service.insert(obj);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(obj.getId()).toUri();
		return ResponseEntity.created(uri).build();
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.PUT)
	public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody Rotina obj){
		obj.setId(id);
		obj = service.update(obj);
		return ResponseEntity.noContent().build();
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public ResponseEntity<Void> delete(@PathVariable Long id) {
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ResponseEntity<List<Rotina>> findAll() {
		List<Rotina> list = service.findAll();
		//List<RotinaDTO> listDTO = list.stream().map(obj -> new RotinaDTO(obj)).collect(Collectors.toList());
		return ResponseEntity.ok().body(list);
	}	
	
	@RequestMapping(value="/page", method=RequestMethod.GET)
	public ResponseEntity<Page<Rotina>> findPage(
			@ RequestParam(value="page", defaultValue="0") Integer page, 
			@ RequestParam(value="linesPerPage", defaultValue="24") Integer linesPerPage, 
			@ RequestParam(value="orderBy", defaultValue="instante") String orderBy, 
			@ RequestParam(value="direction", defaultValue="DESC") String direction) {
		Page<Rotina> list = service.findPage(page, linesPerPage, orderBy, direction);
		//Page<RotinaDTO> listDTO = list.map(obj -> new RotinaDTO(obj));
		return ResponseEntity.ok().body(list);
	}	
	
}
