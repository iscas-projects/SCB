(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1982 0)
(declare-sort var609 0)
(declare-sort var790 0)
(declare-sort var1295 0)
(declare-sort var601 0)
(declare-sort var3054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-522406933 (var609) String)
(declare-fun cast-from-var1982-to-var609 (var1982) var609)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun arr-var609-init () (Array Int var609))
(declare-fun type/-1210071563 (var1982) var790)
(declare-fun cast-from-var790-to-var609 (var790) var609)
(declare-fun hosts/-1210071563 (var1982) var1295)
(declare-fun cast-from-var1295-to-var609 (var1295) var609)
(declare-fun originalDatabase/-1210071563 (var1982) String)
(declare-fun cast-from-String-to-var609 (String) var609)
(declare-fun properties/-1210071563 (var1982) var601)
(declare-fun cast-from-var601-to-var609 (var601) var609)
(declare-fun propertiesTransformer/-1210071563 (var1982) var3054)
(declare-fun cast-from-var3054-to-var609 (var3054) var609)
(declare-fun String_format/1339386452 (String (Array Int var609)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1982 var1982)
(declare-const null-__Array__Int__var609__ (Array Int var609))
(declare-const var2246 var1982) ; Statement: r1 := @this: com.mysql.cj.conf.ConnectionUrl 
(assert (not (= var2246 null-var1982)))
(define-const var982 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3206 String (toString/-522406933 (cast-from-var1982-to-var609 var2246))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var982 var3206)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var982!1 String)
(assert (= var982!1 var3206))
(define-const var1456 (Array Int var609) arr-var609-init) ; Statement: $r3 = newarray (java.lang.Object)[5] 
(define-const var2281 var790 (type/-1210071563 var2246)) ; Statement: $r4 = r1.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> 
(declare-const var1456!1 (Array Int var609))
(assert (not (= var1456!1 null-__Array__Int__var609__)))
(assert (= (select var1456!1 0) (cast-from-var790-to-var609 var2281))) ; Statement: $r3[0] = $r4 
(define-const var3451 var1295 (hosts/-1210071563 var2246)) ; Statement: $r5 = r1.<com.mysql.cj.conf.ConnectionUrl: java.util.List hosts> 
(declare-const var1456!2 (Array Int var609))
(assert (not (= var1456!2 null-__Array__Int__var609__)))
(assert (= (select var1456!2 1) (cast-from-var1295-to-var609 var3451))) ; Statement: $r3[1] = $r5 
(define-const var3990 String (originalDatabase/-1210071563 var2246)) ; Statement: $r6 = r1.<com.mysql.cj.conf.ConnectionUrl: java.lang.String originalDatabase> 
(declare-const var1456!3 (Array Int var609))
(assert (not (= var1456!3 null-__Array__Int__var609__)))
(assert (= (select var1456!3 2) (cast-from-String-to-var609 var3990))) ; Statement: $r3[2] = $r6 
(define-const var1585 var601 (properties/-1210071563 var2246)) ; Statement: $r7 = r1.<com.mysql.cj.conf.ConnectionUrl: java.util.Map properties> 
(declare-const var1456!4 (Array Int var609))
(assert (not (= var1456!4 null-__Array__Int__var609__)))
(assert (= (select var1456!4 3) (cast-from-var601-to-var609 var1585))) ; Statement: $r3[3] = $r7 
(define-const var3626 var3054 (propertiesTransformer/-1210071563 var2246)) ; Statement: $r8 = r1.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionPropertiesTransform propertiesTransformer> 
(declare-const var1456!5 (Array Int var609))
(assert (not (= var1456!5 null-__Array__Int__var609__)))
(assert (= (select var1456!5 4) (cast-from-var3054-to-var609 var3626))) ; Statement: $r3[4] = $r8 
(define-const var104 String (String_format/1339386452 " :: {type: \u0022%s\u0022, hosts: %s, database: \u0022%s\u0022, properties: %s, propertiesTransformer: %s}" var1456!5)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {type: \"%s\", hosts: %s, database: \"%s\", properties: %s, propertiesTransformer: %s}", $r3) 
(assert true)
;(assert (append/672562846 var982!1 var104)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var982!2 String)
(assert (= var982!2 (str.++ var982!1 var104)))
(assert true)
(define-const var1255 String (toString/-2075883882 var982!2)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1982-to-var609=([com.mysql.cj.conf.ConnectionUrl], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), arr-var609-init=([], java.lang.Object[]), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), cast-from-var790-to-var609=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.Object), hosts/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.List), cast-from-var1295-to-var609=([java.util.List], java.lang.Object), originalDatabase/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), cast-from-String-to-var609=([java.lang.String], java.lang.Object), properties/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.Map), cast-from-var601-to-var609=([java.util.Map], java.lang.Object), propertiesTransformer/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionPropertiesTransform), cast-from-var3054-to-var609=([com.mysql.cj.conf.ConnectionPropertiesTransform], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1982=com.mysql.cj.conf.ConnectionUrl, var2246=r1, var982=$r0, var609=java.lang.Object, var3206=$r2, var1456=$r3, var790=com.mysql.cj.conf.ConnectionUrl$Type, var2281=$r4, var1295=java.util.List, var3451=$r5, var3990=$r6, var601=java.util.Map, var1585=$r7, var3054=com.mysql.cj.conf.ConnectionPropertiesTransform, var3626=$r8, var104=$r9, var1255=$r10}
; {com.mysql.cj.conf.ConnectionUrl=var1982, r1=var2246, $r0=var982, java.lang.Object=var609, $r2=var3206, $r3=var1456, com.mysql.cj.conf.ConnectionUrl$Type=var790, $r4=var2281, java.util.List=var1295, $r5=var3451, $r6=var3990, java.util.Map=var601, $r7=var1585, com.mysql.cj.conf.ConnectionPropertiesTransform=var3054, $r8=var3626, $r9=var104, $r10=var1255}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.conf.ConnectionUrl;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = newarray (java.lang.Object)[5];	$r4 = r1.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type>;	$r3[0] = $r4;	$r5 = r1.<com.mysql.cj.conf.ConnectionUrl: java.util.List hosts>;	$r3[1] = $r5;	$r6 = r1.<com.mysql.cj.conf.ConnectionUrl: java.lang.String originalDatabase>;	$r3[2] = $r6;	$r7 = r1.<com.mysql.cj.conf.ConnectionUrl: java.util.Map properties>;	$r3[3] = $r7;	$r8 = r1.<com.mysql.cj.conf.ConnectionUrl: com.mysql.cj.conf.ConnectionPropertiesTransform propertiesTransformer>;	$r3[4] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {type: \"%s\", hosts: %s, database: \"%s\", properties: %s, propertiesTransformer: %s}", $r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1