(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1195 0)
(declare-sort var3285 0)
(declare-sort var2170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3285-init () var3285)
(declare-fun <init>/-788057745 (var3285) void)
(declare-fun var2170_format/-1287257735 (var3285 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-String String)
(declare-const var3264 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3264 null-String)))
(declare-const var1773 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1773 null-String)))
(define-const var8 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var8)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var8!1 String)
(assert (= var8!1 ""))
(assert true)
(define-const var3607 String (append/672562846 var8!1 var3264)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var8!2 String)
(assert (= var8!2 (str.++ var8!1 var3264)))
(define-const var3504 var3285 var3285-init) ; Statement: $r2 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var3504)) ; Statement: specialinvoke $r2.<java.util.Date: void <init>()>() 

(declare-const var3504!1 var3285)
(define-const var2 String (var2170_format/-1287257735 var3504!1 "yyyyMMddHHmmss")) ; Statement: $r3 = staticinvoke <cn.hutool.core.date.DateUtil: java.lang.String format(java.util.Date,java.lang.String)>($r2, "yyyyMMddHHmmss") 
(assert true)
(define-const var3696 String (append/672562846 var3607 var2)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3607!1 String)
(assert (= var3607!1 (str.++ var3607 var2)))
(assert true)
(define-const var3574 String (append/672562846 var3696 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3696!1 String)
(assert (= var3696!1 (str.++ var3696 ".")))
(assert true)
(define-const var596 String (append/672562846 var3574 var1773)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 var1773)))
(assert true)
(define-const var3864 String (toString/-2075883882 var596)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3132 String (replaceAll/1692887130 var3864 " " "")) ; Statement: $r10 = virtualinvoke r9.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(" ", "") 
(assert (= (replaceAll/1692887130 var3864 " " "") (str.replace_re_all var3864 (str.to_re " ") "")))
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3285-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), var2170_format/-1287257735=([java.util.Date, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3264=r1, var1195=null_type, var1773=r6, var8=$r0, var3607=$r4, var3285=java.util.Date, var3504=$r2, var2170=cn.hutool.core.date.DateUtil, var2=$r3, var3696=$r5, var3574=$r7, var596=$r8, var3864=r9, var3132=$r10}
; {r1=var3264, null_type=var1195, r6=var1773, $r0=var8, $r4=var3607, java.util.Date=var3285, $r2=var3504, cn.hutool.core.date.DateUtil=var2170, $r3=var2, $r5=var3696, $r7=var3574, $r8=var596, r9=var3864, $r10=var3132}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = new java.util.Date;	specialinvoke $r2.<java.util.Date: void <init>()>();	$r3 = staticinvoke <cn.hutool.core.date.DateUtil: java.lang.String format(java.util.Date,java.lang.String)>($r2, "yyyyMMddHHmmss");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r9.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(" ", "");	return $r10
;block_num 1