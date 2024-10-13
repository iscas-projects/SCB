(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1412-init () var1412)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumClass/1678935919 (var617) ClassObject)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1412 String) void)
(declare-const null-var617 var617)
(declare-const null-Int Int)
(declare-const var333 var617) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum 
(assert (not (= var333 null-var617)))
(declare-const var330 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var330 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new com.alibaba.fastjson2.JSONException 
(assert (< var330 0)) ; Cond: i0 < 0 
(define-const var1885 var1412 var1412-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3335 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3335)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3335!1 String)
(assert (= var3335!1 ""))
(assert true)
(define-const var1478 String (append/672562846 var3335!1 "No enum ordinal ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No enum ordinal ") 
(declare-const var3335!2 String)
(assert (= var3335!2 (str.++ var3335!1 "No enum ordinal ")))
(define-const var1648 ClassObject (enumClass/1678935919 var333)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass> 
(assert true)
(define-const var3620 String (getCanonicalName/935544231 var1648)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var2367 String (append/672562846 var1478 var3620)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1478!1 String)
(assert (= var1478!1 (str.++ var1478 var3620)))
(assert true)
(define-const var2335 String (append/672562846 var2367 ".")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 ".")))
(assert true)
(define-const var857 String (append/-1001720160 var2335 var330)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2335!1 String)
(assert (str.prefixof var2335 var2335!1))
(assert true)
(define-const var536 String (toString/-2075883882 var857)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1885 var536)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var1885!1 var1412)
(declare-const var536!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1412-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enumClass/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.Class), getCanonicalName/935544231=([java.lang.Class], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var617=com.alibaba.fastjson2.reader.ObjectReaderImplEnum, var333=r2, var330=i0, var1412=com.alibaba.fastjson2.JSONException, var1885=$r0, var3335=$r1, var1478=$r5, var1648=$r3, var3620=$r4, var2367=$r6, var2335=$r7, var857=$r8, var536=$r9}
; {com.alibaba.fastjson2.reader.ObjectReaderImplEnum=var617, r2=var333, i0=var330, com.alibaba.fastjson2.JSONException=var1412, $r0=var1885, $r1=var3335, $r5=var1478, $r3=var1648, $r4=var3620, $r6=var2367, $r7=var2335, $r8=var857, $r9=var536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new com.alibaba.fastjson2.JSONException;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No enum ordinal ");	$r3 = r2.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getCanonicalName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r0
;block_num 2