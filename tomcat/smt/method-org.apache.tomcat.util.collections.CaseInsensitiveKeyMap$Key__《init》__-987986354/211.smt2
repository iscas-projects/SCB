(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var382 0)
(declare-sort var77 0)
(declare-sort var3935 0)
(declare-sort var943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3935) void)
(declare-fun cast-from-var382-to-var3935 (var382) var3935)
(declare-fun key/1655185960 (var382) String)
(declare-fun toLowerCase/1946809429 (String var943) String)
(declare-fun lcKey/1655185960 (var382) String)
(declare-const null-var382 var382)
(declare-const null-String String)
(declare-const var943-ENGLISH var943)
(declare-const var32 var382) ; Statement: r0 := @this: org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key 
(assert (not (= var32 null-var382)))
(declare-const var37 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var37 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var382-to-var3935 var32))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var32!1 var382)
(declare-const var32!2 var382)
(assert (not (= var32!2 null-var382)))
(assert (= (key/1655185960 var32!2) var37)) ; Statement: r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String key> = r1 
(define-const var1521 var943 var943-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1091 String (toLowerCase/1946809429 var37 var1521)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var32!3 var382)
(assert (not (= var32!3 null-var382)))
(assert (= (lcKey/1655185960 var32!3) var1091)) ; Statement: r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String lcKey> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var382-to-var3935=([org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key], java.lang.Object), key/1655185960=([org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), lcKey/1655185960=([org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key], java.lang.String)}
; {var382=org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key, var32=r0, var37=r1, var77=null_type, var3935=java.lang.Object, var943=java.util.Locale, var1521=$r2, var1091=$r3}
; {org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key=var382, r0=var32, r1=var37, null_type=var77, java.lang.Object=var3935, java.util.Locale=var943, $r2=var1521, $r3=var1091}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String key> = r1;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String lcKey> = $r3;	return
;block_num 1