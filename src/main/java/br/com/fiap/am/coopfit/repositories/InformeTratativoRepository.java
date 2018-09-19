package br.com.fiap.am.coopfit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.fiap.am.coopfit.domain.InformeTratativo;

@Repository
public interface InformeTratativoRepository extends JpaRepository<InformeTratativo, Long>{

}
