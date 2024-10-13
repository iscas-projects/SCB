(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3844 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2325-init () var2325)
(declare-fun <init>/875830710 (var2325 String) void)
(declare-const null-String String)
(declare-const var1087 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1087 null-String)))
(assert true)
(define-const var1269 Int (indexOf/-1037706067 var1087 0)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0) 
 ; Statement: if $i0 < 0 goto return r0 
(assert (not (< var1269 0))) ; Negate: Cond: $i0 < 0  
(define-const var1408 var2325 var2325-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1408 "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it")) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it") 

(declare-const var1408!1 var2325)
(declare-const var2831 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), var2325-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1087=r0, var3844=null_type, var1269=$i0, var2325=java.lang.IllegalArgumentException, var1408=$r1, var2831="Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"}
; {r0=var1087, null_type=var3844, $i0=var1269, java.lang.IllegalArgumentException=var2325, $r1=var1408, "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"=var2831}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0);	if $i0 < 0 goto return r0;	$r1 = new java.lang.IllegalArgumentException;	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");	throw $r1
;block_num 2