# WTCRadioCalls

### Data on Radio Communication Dynamics in the World Trade Center Disaster

The `WTCRadioCalls` package contains data on interpersonal radio communication in the World Trade Center Disaster, as originally published in

> Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  "Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings."  *Journal of Mathematical Sociology,* 31(2), 121-147.

with the full dynamic data release in tandem with

> Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  "Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response." *Network Science.* DOI: 10.1017/nws.2023.4

Detailed information on data collection and coding may be found in the original paper, and in the included documentation; this can be viewed after installation by using the  `help(package="WTCRadio")` command.

If using this data in a publication or similar work, we ask that you cite it.  Convenient BibTeX citations for the above papers are:


```
@Article{,
	title = {Responder Communication Networks in the {W}orld {T}rade {C}enter {D}isaster: Implications for Modeling of Communication Within Emergency Settings},
	author = {Butts, Carter T. and Petrescu-Prahova, Miruna G. and Cross, B. Remy},
	year = {2007},
	journal = {Journal of Mathematical Sociology},
    volume = 31,
    number = 2,
    pages = "121--147"
}
```


```
@Article{,
	title = {Modeling Complex Interactions in a Disrupted Environment: Relational Events in the {WTC} Response},
	author = {Renshaw, Scott L. and Livas, Selena M. and Petrescu-Prahova, Miruna G. and Butts, Carter T.},
	year = {2023},
	journal = {Network Science},
	doi = {10.1017/nws.2023.4}
}
```

The most up-to-date citation for the data package itself may be obtained using the command `citation("WTCRadio")` from within R.  Although norms vary, it is helpful to cite the data package (so that folks know where you got it), and the appropriate source paper (so that folks can find out what it is).  But if that's not feasible, we're confident you'll do something reasonable.

More information regarding the package and its use may be found within the package documentation.

## Installing Within R

To install the `WTCRadioCalls` package from the comfort of your own home or office, first ensure that you have the `devtools` package installed and loaded.  Then, type the following:

	install_github("carterbutts/WTCRadioCalls", subdir="WTCRadio")

Alternately, cloning this repository and building/installing the package locally is another option.  But in that case, you don't need my help to tell you what to do, now do you?

## Additional References

A number of papers have been published using this data set.  Some of these may be useful points of reference.  Among them are the following:

* Renshaw, Scott L.; Livas, Selena M.; Petrescu-Prahova, Miruna G.; and Butts, Carter T.  (2023).  "Modeling Complex Interactions in a Disrupted Environment: Relational Events in the WTC Response." *Network Science.* DOI: 10.1017/nws.2023.4
* Fitzhugh, Sean M. and Butts, Carter T.  (2021). "Staying Connected Under Fire: Effects of Individual Roles and Organizational Specialization on the Robustness of Emergency-Phase Communication Networks." *Social Networks,* 64. https://doi.org/10.1016/j.socnet.2020.07.006
* Butts, Carter T.  (2008).  "A Relational Event Framework for Social Action."  *Sociological Methodology,* 38(1), 155-200.
* Petrescu-Prahova, Miruna and Butts, Carter T.  (2008).  "Emergent Coordinators in the World Trade Center Disaster." *International Journal of Mass Emergencies and Disasters,* 28(3), 133-168. 
* Butts, Carter T.; Petrescu-Prahova, Miruna; and Cross, B. Remy.  (2007).  "Responder Communication Networks in the World Trade Center Disaster: Implications for Modeling of Communication Within Emergency Settings."  *Journal of Mathematical Sociology,* 31(2), 121-147.

## Closing Comment

It is humbling to think how much time one can spend trying to understand one morning in September.  

\-CTB, 5/11/23