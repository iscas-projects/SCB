(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2553 0)
(declare-sort var3901 0)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1347-init () var1347)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1347 String) void)
(declare-const null-var2553 var2553)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1286 var2553) ; Statement: r11 := @this: cn.hutool.core.math.Calculator 
(assert (not (= var1286 null-var2553)))
(declare-const var934 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var934 null-String)))
(declare-const var1062 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1062 null-String)))
(declare-const var1495 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var1495 null-Int)))
(define-const var1188 Int (cast-from-Int-to-Int var1495)) ; Statement: $i1 = (int) c0 
 ; Statement: tableswitch($i1) {     case 37: goto $r5 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal toBigDecimal(java.lang.String)>(r0);     case 38: goto $r14 = new java.lang.IllegalStateException;     case 39: goto $r14 = new java.lang.IllegalStateException;     case 40: goto $r14 = new java.lang.IllegalStateException;     case 41: goto $r14 = new java.lang.IllegalStateException;     case 42: goto r12 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.String,java.lang.String)>(r0, r1);     case 43: goto $r3 = newarray (java.lang.String)[2];     case 44: goto $r14 = new java.lang.IllegalStateException;     case 45: goto $r2 = newarray (java.lang.String)[2];     case 46: goto $r14 = new java.lang.IllegalStateException;     case 47: goto r12 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal div(java.lang.String,java.lang.String)>(r0, r1);     default: goto $r14 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1188 37)) true)) ; Intersect: Negate: Cond: $i1 == 37   and Non Conditional 
(define-const var1322 var1347 var1347-init) ; Statement: $r14 = new java.lang.IllegalStateException 
(define-const var2110 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2110)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2110!1 String)
(assert (= var2110!1 ""))
(assert true)
(define-const var3949 String (append/672562846 var2110!1 "Unexpected value: ")) ; Statement: $r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected value: ") 
(declare-const var2110!2 String)
(assert (= var2110!2 (str.++ var2110!1 "Unexpected value: ")))
(assert true)
(define-const var1497 String (append/-1166366385 var3949 var1495)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3949!1 String)
(assert (str.prefixof var3949 var3949!1))
(assert true)
(define-const var1205 String (toString/-2075883882 var1497)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1322 var1205)) ; Statement: specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var1322!1 var1347)
(declare-const var1205!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1347-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2553=cn.hutool.core.math.Calculator, var1286=r11, var934=r0, var3901=null_type, var1062=r1, var1495=c0, var1188=$i1, var1347=java.lang.IllegalStateException, var1322=$r14, var2110=$r13, var3949=$r8, var1497=$r9, var1205=$r10}
; {cn.hutool.core.math.Calculator=var2553, r11=var1286, r0=var934, null_type=var3901, r1=var1062, c0=var1495, $i1=var1188, java.lang.IllegalStateException=var1347, $r14=var1322, $r13=var2110, $r8=var3949, $r9=var1497, $r10=var1205}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: cn.hutool.core.math.Calculator;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	c0 := @parameter2: char;	$i1 = (int) c0;	tableswitch($i1) {     case 37: goto $r5 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal toBigDecimal(java.lang.String)>(r0);     case 38: goto $r14 = new java.lang.IllegalStateException;     case 39: goto $r14 = new java.lang.IllegalStateException;     case 40: goto $r14 = new java.lang.IllegalStateException;     case 41: goto $r14 = new java.lang.IllegalStateException;     case 42: goto r12 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.String,java.lang.String)>(r0, r1);     case 43: goto $r3 = newarray (java.lang.String)[2];     case 44: goto $r14 = new java.lang.IllegalStateException;     case 45: goto $r2 = newarray (java.lang.String)[2];     case 46: goto $r14 = new java.lang.IllegalStateException;     case 47: goto r12 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal div(java.lang.String,java.lang.String)>(r0, r1);     default: goto $r14 = new java.lang.IllegalStateException; };	$r14 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected value: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r14
;block_num 2