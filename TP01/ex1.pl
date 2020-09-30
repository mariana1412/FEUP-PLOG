/* -*- maMode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:4; tab-width:8; -*- */

male(aldo).
male(lincoln).
male(lj).
male(michael).
female(christina).
female(lisa).
female(sara).
female(ella).

parent(aldo, lincoln). %parent, child
parent(aldo, michael).
parent(christina, lincoln).
parent(christina, michael).
parent(lisa, lj). 
parent(lincoln, lj).
parent(michael, ella).
parent(sara, ella).

%a. parent(X, michael).
%b. parent(X, aldo).
