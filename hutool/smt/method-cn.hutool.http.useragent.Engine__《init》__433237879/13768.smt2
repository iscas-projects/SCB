(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3448 0)
(declare-sort var60 0)
(declare-sort var1214 0)
(declare-sort var1498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1847769183 (var1214 String String) void)
(declare-fun cast-from-var3448-to-var1214 (var3448) var1214)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1498_compile/915022044 (String Int) var1498)
(declare-fun versionPattern/1003056886 (var3448) var1498)
(declare-const null-var3448 var3448)
(declare-const null-String String)
(declare-const var2987 var3448) ; Statement: r0 := @this: cn.hutool.http.useragent.Engine 
(assert (not (= var2987 null-var3448)))
(declare-const var3556 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3556 null-String)))
(declare-const var1571 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1571 null-String)))
(assert true)
;(assert (<init>/-1847769183 (cast-from-var3448-to-var1214 var2987) var3556 var1571)) ; Statement: specialinvoke r0.<cn.hutool.http.useragent.UserAgentInfo: void <init>(java.lang.String,java.lang.String)>(r1, r2) 

(declare-const var2987!1 var3448)
(declare-const var3556!1 String)
(declare-const var1571!1 String)
(define-const var2039 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2039)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2039!1 String)
(assert (= var2039!1 ""))
(assert true)
(define-const var881 String (append/672562846 var2039!1 var3556!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2039!2 String)
(assert (= var2039!2 (str.++ var2039!1 var3556!1)))
(assert true)
(define-const var3438 String (append/672562846 var881 "[/\u005c- ]([\u005cd\u005cw.\u005c-]+)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[/\\- ]([\\d\\w.\\-]+)") 
(declare-const var881!1 String)
(assert (= var881!1 (str.++ var881 "[/\u005c- ]([\u005cd\u005cw.\u005c-]+)")))
(assert true)
(define-const var2510 String (toString/-2075883882 var3438)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1786 var1498 (var1498_compile/915022044 var2510 2)) ; Statement: $r7 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r6, 2) 
(declare-const var2987!2 var3448)
(assert (not (= var2987!2 null-var3448)))
(assert (= (versionPattern/1003056886 var2987!2) var1786)) ; Statement: r0.<cn.hutool.http.useragent.Engine: java.util.regex.Pattern versionPattern> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1847769183=([cn.hutool.http.useragent.UserAgentInfo, java.lang.String, java.lang.String], void), cast-from-var3448-to-var1214=([cn.hutool.http.useragent.Engine], cn.hutool.http.useragent.UserAgentInfo), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1498_compile/915022044=([java.lang.String, int], java.util.regex.Pattern), versionPattern/1003056886=([cn.hutool.http.useragent.Engine], java.util.regex.Pattern)}
; {var3448=cn.hutool.http.useragent.Engine, var2987=r0, var3556=r1, var60=null_type, var1571=r2, var1214=cn.hutool.http.useragent.UserAgentInfo, var2039=$r3, var881=$r4, var3438=$r5, var2510=$r6, var1498=java.util.regex.Pattern, var1786=$r7}
; {cn.hutool.http.useragent.Engine=var3448, r0=var2987, r1=var3556, null_type=var60, r2=var1571, cn.hutool.http.useragent.UserAgentInfo=var1214, $r3=var2039, $r4=var881, $r5=var3438, $r6=var2510, java.util.regex.Pattern=var1498, $r7=var1786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.http.useragent.Engine;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<cn.hutool.http.useragent.UserAgentInfo: void <init>(java.lang.String,java.lang.String)>(r1, r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[/\\- ]([\\d\\w.\\-]+)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r6, 2);	r0.<cn.hutool.http.useragent.Engine: java.util.regex.Pattern versionPattern> = $r7;	return
;block_num 1