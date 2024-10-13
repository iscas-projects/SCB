(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var3898 0)
(declare-sort var786 0)
(declare-sort var1725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var1444) Int)
(declare-fun var3898-init () var3898)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun peek/134225960 (var1444) var786)
(declare-fun append/-1031950772 (String var1725) String)
(declare-fun cast-from-var786-to-var1725 (var786) var1725)
(declare-fun locationString/391724147 (var1444) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3898 String) void)
(declare-const null-var1444 var1444)
(declare-const var116 var1444) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var116 null-var1444)))
(define-const var3541 Int (peeked/-1654894195 var116)) ; Statement: i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i6 != 0 goto (branch) 
(assert (not (= var3541 0))) ; Cond: i6 != 0 
 ; Statement: if i6 != 4 goto $r1 = new java.lang.IllegalStateException 
(assert (not (= var3541 4))) ; Cond: i6 != 4 
(define-const var3194 var3898 var3898-init) ; Statement: $r1 = new java.lang.IllegalStateException 
(define-const var704 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var704)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var704!1 String)
(assert (= var704!1 ""))
(assert true)
(define-const var3098 String (append/672562846 var704!1 "Expected END_ARRAY but was ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_ARRAY but was ") 
(declare-const var704!2 String)
(assert (= var704!2 (str.++ var704!1 "Expected END_ARRAY but was ")))
(assert true)
(define-const var924 var786 (peek/134225960 var116)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var447 String (append/-1031950772 var3098 (cast-from-var786-to-var1725 var924))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3098!1 String)
(assert (str.prefixof var3098 var3098!1))
(assert true)
(define-const var228 String (locationString/391724147 var116)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var89 String (append/672562846 var447 var228)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 var228)))
(assert true)
(define-const var721 String (toString/-2075883882 var89)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3194 var721)) ; Statement: specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3194!1 var3898)
(declare-const var721!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), var3898-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var786-to-var1725=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1444=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var116=r0, var3541=i6, var3898=java.lang.IllegalStateException, var3194=$r1, var704=$r2, var3098=$r4, var786=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var924=$r3, var1725=java.lang.Object, var447=$r6, var228=$r5, var89=$r7, var721=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1444, r0=var116, i6=var3541, java.lang.IllegalStateException=var3898, $r1=var3194, $r2=var704, $r4=var3098, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var786, $r3=var924, java.lang.Object=var1725, $r6=var447, $r5=var228, $r7=var89, $r8=var721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i6 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i6 != 0 goto (branch);	if i6 != 4 goto $r1 = new java.lang.IllegalStateException;	$r1 = new java.lang.IllegalStateException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected END_ARRAY but was ");	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3