(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1230 0)
(declare-sort var3492 0)
(declare-sort var1481 0)
(declare-sort var2413 0)
(declare-sort var3755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1481_requireNonNull/1378936425 (var2413 String) var2413)
(declare-fun cast-from-String-to-var2413 (String) var2413)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3755-init () var3755)
(declare-fun <init>/875830710 (var3755 String) void)
(declare-const null-var1230 var1230)
(declare-const null-String String)
(declare-const var87 var1230) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion 
(assert (not (= var87 null-var1230)))
(declare-const var469 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var469 null-String)))
;(assert (var1481_requireNonNull/1378936425 (cast-from-String-to-var2413 var469) "Version number cannot be null.")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Version number cannot be null.") 

(declare-const var469!1 String)
(declare-const var1853 String)
(assert true)
(define-const var1552 Int (indexOf/-1037706067 var469!1 45)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45) 
 ; Statement: if $i0 >= 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var1552 0)) ; Cond: $i0 >= 0 
(define-const var1161 var3755 var3755-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1161 "Version number cannot contain \u0027-\u0027 or \u0027+\u0027.")) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Version number cannot contain \'-\' or \'+\'.") 

(declare-const var1161!1 var3755)
(declare-const var714 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1481_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var2413=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), var3755-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1230=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion, var87=r2, var469=r0, var3492=null_type, var1481=java.util.Objects, var2413=java.lang.Object, var1853="Version number cannot be null.", var1552=$i0, var3755=java.lang.IllegalArgumentException, var1161=$r1, var714="Version number cannot contain \'-\' or \'+\'."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion=var1230, r2=var87, r0=var469, null_type=var3492, java.util.Objects=var1481, java.lang.Object=var2413, "Version number cannot be null."=var1853, $i0=var1552, java.lang.IllegalArgumentException=var3755, $r1=var1161, "Version number cannot contain \'-\' or \'+\'."=var714}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ModuleVersion;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "Version number cannot be null.");	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45);	if $i0 >= 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Version number cannot contain \'-\' or \'+\'.");	throw $r1
;block_num 2