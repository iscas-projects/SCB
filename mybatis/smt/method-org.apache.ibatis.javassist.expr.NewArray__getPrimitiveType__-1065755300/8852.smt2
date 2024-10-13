(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3409 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1125-init () var1125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1125 String) void)
(declare-const null-var3409 var3409)
(declare-const null-Int Int)
(declare-const var1246 var3409) ; Statement: r13 := @this: org.apache.ibatis.javassist.expr.NewArray 
(assert (not (= var1246 null-var3409)))
(declare-const var160 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var160 null-Int)))
 ; Statement: tableswitch(i0) {     case 4: goto $r7 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass booleanType>;     case 5: goto $r6 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass charType>;     case 6: goto $r5 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass floatType>;     case 7: goto $r4 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass doubleType>;     case 8: goto $r3 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass byteType>;     case 9: goto $r2 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass shortType>;     case 10: goto $r1 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass intType>;     case 11: goto $r0 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass longType>;     default: goto $r8 = new java.lang.RuntimeException; } 
(assert (and (not (= var160 11)) (and (not (= var160 10)) (and (not (= var160 9)) (and (not (= var160 8)) (and (not (= var160 7)) (and (not (= var160 6)) (and (not (= var160 5)) (and (not (= var160 4)) true))))))))) ; Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Non Conditional        
(define-const var946 var1125 var1125-init) ; Statement: $r8 = new java.lang.RuntimeException 
(define-const var193 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var193)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var193!1 String)
(assert (= var193!1 ""))
(assert true)
(define-const var1997 String (append/672562846 var193!1 "bad atype: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad atype: ") 
(declare-const var193!2 String)
(assert (= var193!2 (str.++ var193!1 "bad atype: ")))
(assert true)
(define-const var94 String (append/-1001720160 var1997 var160)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1997!1 String)
(assert (str.prefixof var1997 var1997!1))
(assert true)
(define-const var1530 String (toString/-2075883882 var94)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var946 var1530)) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var946!1 var1125)
(declare-const var1530!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1125-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3409=org.apache.ibatis.javassist.expr.NewArray, var1246=r13, var160=i0, var1125=java.lang.RuntimeException, var946=$r8, var193=$r9, var1997=$r10, var94=$r11, var1530=$r12}
; {org.apache.ibatis.javassist.expr.NewArray=var3409, r13=var1246, i0=var160, java.lang.RuntimeException=var1125, $r8=var946, $r9=var193, $r10=var1997, $r11=var94, $r12=var1530}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.ibatis.javassist.expr.NewArray;	i0 := @parameter0: int;	tableswitch(i0) {     case 4: goto $r7 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass booleanType>;     case 5: goto $r6 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass charType>;     case 6: goto $r5 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass floatType>;     case 7: goto $r4 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass doubleType>;     case 8: goto $r3 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass byteType>;     case 9: goto $r2 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass shortType>;     case 10: goto $r1 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass intType>;     case 11: goto $r0 = <org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtClass longType>;     default: goto $r8 = new java.lang.RuntimeException; };	$r8 = new java.lang.RuntimeException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad atype: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2