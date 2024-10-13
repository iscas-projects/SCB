(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2422 0)
(declare-sort var2543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2543-init () var2543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2543 String) void)
(declare-const null-var2422 var2422)
(declare-const null-Int Int)
(declare-const var1216 var2422) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct 
(assert (not (= var1216 null-var2422)))
(declare-const var102 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var102 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetFields()>();     default: goto $r2 = new java.lang.RuntimeException; } 
(assert (and (not (= var102 1)) true)) ; Intersect: Negate: Cond: i0 == 1   and Non Conditional 
(define-const var1523 var2543 var2543-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var468 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var468)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var468!1 String)
(assert (= var468!1 ""))
(assert true)
(define-const var2203 String (append/672562846 var468!1 "Invalid map field number: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ") 
(declare-const var468!2 String)
(assert (= var468!2 (str.++ var468!1 "Invalid map field number: ")))
(assert true)
(define-const var1186 String (append/-1001720160 var2203 var102)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2203!1 String)
(assert (str.prefixof var2203 var2203!1))
(assert true)
(define-const var208 String (toString/-2075883882 var1186)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1523 var208)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var1523!1 var2543)
(declare-const var208!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2543-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2422=com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct, var1216=r0, var102=i0, var2543=java.lang.RuntimeException, var1523=$r2, var468=$r3, var2203=$r4, var1186=$r5, var208=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct=var2422, r0=var1216, i0=var102, java.lang.RuntimeException=var2543, $r2=var1523, $r3=var468, $r4=var2203, $r5=var1186, $r6=var208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetFields()>();     default: goto $r2 = new java.lang.RuntimeException; };	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2