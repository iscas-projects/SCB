(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1912 0)
(declare-sort var3979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3979) void)
(declare-fun cast-from-var1912-to-var3979 (var1912) var3979)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun builder/-878163304 (var1912) String)
(declare-fun indentation/-878163304 (var1912) String)
(declare-fun isForAnnotations/-878163304 (var1912) Bool)
(declare-const null-var1912 var1912)
(declare-const null-Bool Bool)
(declare-const var2333 var1912) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder 
(assert (not (= var2333 null-var1912)))
(declare-const var3600 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3600 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1912-to-var3979 var2333))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2333!1 var1912)
(define-const var2887 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2887)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2887!1 String)
(assert (= var2887!1 ""))
(declare-const var2333!2 var1912)
(assert (not (= var2333!2 null-var1912)))
(assert (= (builder/-878163304 var2333!2) var2887!1)) ; Statement: r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder> = $r1 
(declare-const var2333!3 var1912)
(assert (not (= var2333!3 null-var1912)))
(assert (= (indentation/-878163304 var2333!3) "")) ; Statement: r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.String indentation> = "" 
(declare-const var2333!4 var1912)
(assert (not (= var2333!4 null-var1912)))
(assert (= (isForAnnotations/-878163304 var2333!4) var3600)) ; Statement: r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: boolean isForAnnotations> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1912-to-var3979=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), builder/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.StringBuilder), indentation/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.String), isForAnnotations/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], boolean)}
; {var1912=com.google.javascript.rhino.jstype.TypeStringBuilder, var2333=r0, var3600=z0, var3979=java.lang.Object, var2887=$r1}
; {com.google.javascript.rhino.jstype.TypeStringBuilder=var1912, r0=var2333, z0=var3600, java.lang.Object=var3979, $r1=var2887}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder;	z0 := @parameter0: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder> = $r1;	r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.String indentation> = "";	r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: boolean isForAnnotations> = z0;	return
;block_num 1