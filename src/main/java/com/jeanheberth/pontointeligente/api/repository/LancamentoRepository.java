package com.jeanheberth.pontointeligente.api.repository;

import com.jeanheberth.pontointeligente.api.entities.Lancamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LancamentoRepository extends JpaRepository<Lancamento, Long> {
}
