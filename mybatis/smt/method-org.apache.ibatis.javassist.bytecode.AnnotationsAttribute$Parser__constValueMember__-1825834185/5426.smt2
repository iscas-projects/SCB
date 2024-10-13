(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1329 0)
(declare-sort var3231 0)
(declare-sort var3416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pool/1063678394 (var1329) var3231)
(declare-fun var3416-init () var3416)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3416 String) void)
(declare-const null-var1329 var1329)
(declare-const null-Int Int)
(declare-const var1372 var1329) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser 
(assert (not (= var1372 null-var1329)))
(declare-const var1301 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1301 null-Int)))
(declare-const var621 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var621 null-Int)))
(define-const var349 var3231 (pool/1063678394 var1372)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser: org.apache.ibatis.javassist.bytecode.ConstPool pool> 
 ; Statement: lookupswitch(i0) {     case 66: goto $r10 = new org.apache.ibatis.javassist.bytecode.annotation.ByteMemberValue;     case 67: goto $r9 = new org.apache.ibatis.javassist.bytecode.annotation.CharMemberValue;     case 68: goto $r8 = new org.apache.ibatis.javassist.bytecode.annotation.DoubleMemberValue;     case 70: goto $r7 = new org.apache.ibatis.javassist.bytecode.annotation.FloatMemberValue;     case 73: goto $r6 = new org.apache.ibatis.javassist.bytecode.annotation.IntegerMemberValue;     case 74: goto $r5 = new org.apache.ibatis.javassist.bytecode.annotation.LongMemberValue;     case 83: goto $r4 = new org.apache.ibatis.javassist.bytecode.annotation.ShortMemberValue;     case 90: goto $r3 = new org.apache.ibatis.javassist.bytecode.annotation.BooleanMemberValue;     case 115: goto $r2 = new org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue;     default: goto $r11 = new java.lang.RuntimeException; } 
(assert (and (not (= var1301 115)) (and (not (= var1301 90)) (and (not (= var1301 83)) (and (not (= var1301 74)) (and (not (= var1301 73)) (and (not (= var1301 70)) (and (not (= var1301 68)) (and (not (= var1301 67)) (and (not (= var1301 66)) true)))))))))) ; Intersect: Negate: Cond: i0 == 115   and Intersect: Negate: Cond: i0 == 90   and Intersect: Negate: Cond: i0 == 83   and Intersect: Negate: Cond: i0 == 74   and Intersect: Negate: Cond: i0 == 73   and Intersect: Negate: Cond: i0 == 70   and Intersect: Negate: Cond: i0 == 68   and Intersect: Negate: Cond: i0 == 67   and Intersect: Negate: Cond: i0 == 66   and Non Conditional         
(define-const var3379 var3416 var3416-init) ; Statement: $r11 = new java.lang.RuntimeException 
(define-const var1404 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1404)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1404!1 String)
(assert (= var1404!1 ""))
(assert true)
(define-const var461 String (append/672562846 var1404!1 "unknown tag:")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown tag:") 
(declare-const var1404!2 String)
(assert (= var1404!2 (str.++ var1404!1 "unknown tag:")))
(assert true)
(define-const var314 String (append/-1001720160 var461 var1301)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var461!1 String)
(assert (str.prefixof var461 var461!1))
(assert true)
(define-const var898 String (toString/-2075883882 var314)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3379 var898)) ; Statement: specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15) 

(declare-const var3379!1 var3416)
(declare-const var898!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {pool/1063678394=([org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser], org.apache.ibatis.javassist.bytecode.ConstPool), var3416-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1329=org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser, var1372=r0, var1301=i0, var621=i1, var3231=org.apache.ibatis.javassist.bytecode.ConstPool, var349=r1, var3416=java.lang.RuntimeException, var3379=$r11, var1404=$r12, var461=$r13, var314=$r14, var898=$r15}
; {org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser=var1329, r0=var1372, i0=var1301, i1=var621, org.apache.ibatis.javassist.bytecode.ConstPool=var3231, r1=var349, java.lang.RuntimeException=var3416, $r11=var3379, $r12=var1404, $r13=var461, $r14=var314, $r15=var898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser;	i0 := @parameter0: int;	i1 := @parameter1: int;	r1 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Parser: org.apache.ibatis.javassist.bytecode.ConstPool pool>;	lookupswitch(i0) {     case 66: goto $r10 = new org.apache.ibatis.javassist.bytecode.annotation.ByteMemberValue;     case 67: goto $r9 = new org.apache.ibatis.javassist.bytecode.annotation.CharMemberValue;     case 68: goto $r8 = new org.apache.ibatis.javassist.bytecode.annotation.DoubleMemberValue;     case 70: goto $r7 = new org.apache.ibatis.javassist.bytecode.annotation.FloatMemberValue;     case 73: goto $r6 = new org.apache.ibatis.javassist.bytecode.annotation.IntegerMemberValue;     case 74: goto $r5 = new org.apache.ibatis.javassist.bytecode.annotation.LongMemberValue;     case 83: goto $r4 = new org.apache.ibatis.javassist.bytecode.annotation.ShortMemberValue;     case 90: goto $r3 = new org.apache.ibatis.javassist.bytecode.annotation.BooleanMemberValue;     case 115: goto $r2 = new org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue;     default: goto $r11 = new java.lang.RuntimeException; };	$r11 = new java.lang.RuntimeException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown tag:");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2