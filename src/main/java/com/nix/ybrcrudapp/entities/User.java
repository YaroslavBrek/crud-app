package com.nix.ybrcrudapp.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@javax.persistence.Entity
@Getter
@Setter
@AllArgsConstructor
public class User {
  private long id;
  private String name;
  private String message;
}
