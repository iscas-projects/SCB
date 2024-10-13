(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var3879 0)
(declare-sort var711 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parserProperties/-2095635781 (var2341) var711)
(declare-fun getOptionValueDelimiter/-797708023 (var711) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun findOptionByName/-1289761264 (var2341 String) var3751)
(declare-const null-var2341 var2341)
(declare-const null-String String)
(declare-const var299 var2341) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var299 null-var2341)))
(declare-const var380 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var380 null-String)))
(define-const var3293 var711 (parserProperties/-2095635781 var299)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert true)
(define-const var1437 String (getOptionValueDelimiter/-797708023 var3293)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: java.lang.String getOptionValueDelimiter()>() 
(assert true)
(define-const var1165 Int (indexOf/-1209756239 var380 var1437)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int indexOf(java.lang.String)>($r2) 
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var1165 0)) ; Cond: i0 >= 0 
 ; Statement: if i0 <= 0 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler findOptionByName(java.lang.String)>(r4) 
(assert (<= var1165 0)) ; Cond: i0 <= 0 
(assert true)
(define-const var2412 var3751 (findOptionByName/-1289761264 var299 var380)) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler findOptionByName(java.lang.String)>(r4) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {parserProperties/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties), getOptionValueDelimiter/-797708023=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), findOptionByName/-1289761264=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, java.lang.String], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler)}
; {var2341=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var299=r0, var380=r4, var3879=null_type, var711=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties, var3293=$r1, var1437=$r2, var1165=i0, var3751=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var2412=$r3}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var2341, r0=var299, r4=var380, null_type=var3879, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties=var711, $r1=var3293, $r2=var1437, i0=var1165, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var3751, $r3=var2412}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r4 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties: java.lang.String getOptionValueDelimiter()>();	i0 = virtualinvoke r4.<java.lang.String: int indexOf(java.lang.String)>($r2);	if i0 >= 0 goto (branch);	if i0 <= 0 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler findOptionByName(java.lang.String)>(r4);	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler findOptionByName(java.lang.String)>(r4);	return $r3
;block_num 3