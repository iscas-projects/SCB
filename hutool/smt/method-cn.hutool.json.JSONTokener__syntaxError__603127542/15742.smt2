(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1268 0)
(declare-sort var3472 0)
(declare-sort var1476 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1476-init () var1476)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1486) String)
(declare-fun cast-from-var1268-to-var1486 (var1268) var1486)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2113043085 (var1476 String) void)
(declare-const null-var1268 var1268)
(declare-const null-String String)
(declare-const var3313 var1268) ; Statement: r3 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var3313 null-var1268)))
(declare-const var3439 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3439 null-String)))
(define-const var2002 var1476 var1476-init) ; Statement: $r0 = new cn.hutool.json.JSONException 
(define-const var1376 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1376)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1376!1 String)
(assert (= var1376!1 ""))
(assert true)
(define-const var870 String (append/672562846 var1376!1 var3439)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1376!2 String)
(assert (= var1376!2 (str.++ var1376!1 var3439)))
(assert true)
(define-const var365 String (append/-1031950772 var870 (cast-from-var1268-to-var1486 var3313))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var870!1 String)
(assert (str.prefixof var870 var870!1))
(assert true)
(define-const var71 String (toString/-2075883882 var365)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2113043085 var2002 var71)) ; Statement: specialinvoke $r0.<cn.hutool.json.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2002!1 var1476)
(declare-const var71!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1476-init=([], cn.hutool.json.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1268-to-var1486=([cn.hutool.json.JSONTokener], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2113043085=([cn.hutool.json.JSONException, java.lang.String], void)}
; {var1268=cn.hutool.json.JSONTokener, var3313=r3, var3439=r2, var3472=null_type, var1476=cn.hutool.json.JSONException, var2002=$r0, var1376=$r1, var870=$r4, var1486=java.lang.Object, var365=$r5, var71=$r6}
; {cn.hutool.json.JSONTokener=var1268, r3=var3313, r2=var3439, null_type=var3472, cn.hutool.json.JSONException=var1476, $r0=var2002, $r1=var1376, $r4=var870, java.lang.Object=var1486, $r5=var365, $r6=var71}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: cn.hutool.json.JSONTokener;	r2 := @parameter0: java.lang.String;	$r0 = new cn.hutool.json.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<cn.hutool.json.JSONException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1