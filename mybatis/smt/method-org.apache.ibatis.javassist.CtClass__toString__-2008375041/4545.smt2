(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2279 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var2597) ClassObject)
(declare-fun cast-from-var2279-to-var2597 (var2279) var2597)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hashCode/1739917532 (var2597) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun extendToString/-1076789876 (var2279 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2279 var2279)
(declare-const var34 var2279) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var34 null-var2279)))
(define-const var3833 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1602 ClassObject (getClass/1258963082 (cast-from-var2279-to-var2597 var34))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3106 String (getName/-1958580599 var1602)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var3833 var3106)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3833!1 String)
(assert (= var3833!1 var3106))
(assert true)
;(assert (append/-1166366385 var3833!1 64)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var3833!2 String)
(assert (str.prefixof var3833!1 var3833!2))
(assert true)
(define-const var287 Int (hashCode/1739917532 (cast-from-var2279-to-var2597 var34))) ; Statement: $i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>() 
(define-const var3232 String (Int_toHexString/1865784998 var287)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
;(assert (append/672562846 var3833!2 var3232)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3833!3 String)
(assert (= var3833!3 (str.++ var3833!2 var3232)))
(assert true)
;(assert (append/-1166366385 var3833!3 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3833!4 String)
(assert (str.prefixof var3833!3 var3833!4))
(assert true)
;(assert (extendToString/-1076789876 var34 var3833!4)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: void extendToString(java.lang.StringBuilder)>($r0) 

(declare-const var34!1 var2279)
(declare-const var3833!5 String)
(assert true)
;(assert (append/-1166366385 var3833!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3833!6 String)
(assert (str.prefixof var3833!5 var3833!6))
(assert true)
(define-const var597 String (toString/-2075883882 var3833!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2279-to-var2597=([org.apache.ibatis.javassist.CtClass], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hashCode/1739917532=([java.lang.Object], int), Int_toHexString/1865784998=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), extendToString/-1076789876=([org.apache.ibatis.javassist.CtClass, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2279=org.apache.ibatis.javassist.CtClass, var34=r1, var3833=$r0, var2597=java.lang.Object, var1602=$r2, var3106=$r3, var287=$i0, var3232=$r4, var597=$r5}
; {org.apache.ibatis.javassist.CtClass=var2279, r1=var34, $r0=var3833, java.lang.Object=var2597, $r2=var1602, $r3=var3106, $i0=var287, $r4=var3232, $r5=var597}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtClass;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: void extendToString(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1