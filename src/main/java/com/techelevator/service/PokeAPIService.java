package com.techelevator.service;

import com.techelevator.model.Pokemon;
import com.techelevator.model.PokemonDetail;

import java.util.List;

public interface PokeAPIService {

    // abstract methods
    List<Pokemon> getPokemon();

    PokemonDetail getPokemonDetailById(int id);

    List<Pokemon> getMorePokemon(int startVal, int endVal);
}
