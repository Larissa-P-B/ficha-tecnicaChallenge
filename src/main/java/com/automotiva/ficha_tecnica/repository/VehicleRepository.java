package com.automotiva.ficha_tecnica.repository;

import com.automotiva.ficha_tecnica.entity.Veiculo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface VehicleRepository extends JpaRepository<Veiculo, Long> {

    Optional<Veiculo> findByMarcaAndModeloAndVersao(
            String marca,
            String modelo,
            String versao
    );

    boolean existsByMarcaIgnoreCaseAndModeloIgnoreCaseAndVersaoIgnoreCase(
            String marca,
            String modelo,
            String versao
    );
}
