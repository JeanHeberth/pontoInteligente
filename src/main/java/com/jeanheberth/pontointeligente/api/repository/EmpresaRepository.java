package com.jeanheberth.pontointeligente.api.repository;

import com.jeanheberth.pontointeligente.api.entities.Empresa;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmpresaRepository extends JpaRepository<EmpresaRepository, Long> {
    @Transactional
    Empresa findByCnpj(String cnpj);

}
