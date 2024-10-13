(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1632 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPath/39698060 (var1632) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun split/848239037 (String String Int) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1679-init () var1679)
(declare-fun <init>/875830710 (var1679 String) void)
(declare-const null-var1632 var1632)
(declare-const null-Bool Bool)
(declare-const var3691 var1632) ; Statement: r1 := @parameter0: java.net.URI 
(assert (not (= var3691 null-var1632)))
(declare-const var1341 var1632) ; Statement: r35 := @parameter1: java.net.URI 
(assert (not (= var1341 null-var1632)))
(declare-const var3777 Bool) ; Statement: z6 := @parameter2: boolean 
(assert (not (= var3777 null-Bool)))
(define-const var2139 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2139)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2139!1 String)
(assert (= var2139!1 ""))
(assert true)
(define-const var3116 String (getPath/39698060 var3691)) ; Statement: $r2 = virtualinvoke r1.<java.net.URI: java.lang.String getPath()>() 
(define-const var2404 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i29 = (int) -1 
(assert true)
(define-const var3815 (Array Int String) (split/848239037 var3116 "/" var2404)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("/", $i29) 
(assert true)
(define-const var1496 String (getPath/39698060 var1341)) ; Statement: $r4 = virtualinvoke r35.<java.net.URI: java.lang.String getPath()>() 
(define-const var3075 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i31 = (int) -1 
(assert true)
(define-const var3261 (Array Int String) (split/848239037 var1496 "/" var3075)) ; Statement: r5 = virtualinvoke $r4.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("/", $i31) 
(define-const var1331 Int (getLength-Arr-String-1 var3815)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 != 0 goto $i1 = lengthof r5 
(assert (not (not (= var1331 0)))) ; Negate: Cond: $i0 != 0  
(define-const var879 var1679 var1679-init) ; Statement: $r40 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var879 "Can\u0027t relativize an empty source URI !")) ; Statement: specialinvoke $r40.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Can\'t relativize an empty source URI !") 

(declare-const var879!1 var1679)
(declare-const var2071 String)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPath/39698060=([java.net.URI], java.lang.String), cast-from-Int-to-Int=([int], int), split/848239037=([java.lang.String, java.lang.String, int], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1679-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1632=java.net.URI, var3691=r1, var1341=r35, var3777=z6, var2139=$r39, var3116=$r2, var2404=$i29, var3815=r3, var1496=$r4, var3075=$i31, var3261=r5, var1331=$i0, var1679=java.lang.IllegalArgumentException, var879=$r40, var2071="Can\'t relativize an empty source URI !"}
; {java.net.URI=var1632, r1=var3691, r35=var1341, z6=var3777, $r39=var2139, $r2=var3116, $i29=var2404, r3=var3815, $r4=var1496, $i31=var3075, r5=var3261, $i0=var1331, java.lang.IllegalArgumentException=var1679, $r40=var879, "Can\'t relativize an empty source URI !"=var2071}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String[] split(java.lang.String,int)>;	<java.lang.String: java.lang.String[] split(java.lang.String,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String,int)>": 2}
;stmts r1 := @parameter0: java.net.URI;	r35 := @parameter1: java.net.URI;	z6 := @parameter2: boolean;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.net.URI: java.lang.String getPath()>();	$i29 = (int) -1;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("/", $i29);	$r4 = virtualinvoke r35.<java.net.URI: java.lang.String getPath()>();	$i31 = (int) -1;	r5 = virtualinvoke $r4.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("/", $i31);	$i0 = lengthof r3;	if $i0 != 0 goto $i1 = lengthof r5;	$r40 = new java.lang.IllegalArgumentException;	specialinvoke $r40.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Can\'t relativize an empty source URI !");	throw $r40
;block_num 2