(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort var925 0)
(declare-sort var600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun sqlBuffer/-29599980 (var1792) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun toUpperCase/398655892 (String var925) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun delegate/-29599980 (var1792) var600)
(declare-fun appendSql/-1536305999 (var600 String) void)
(declare-const null-var1792 var1792)
(declare-const var925-ENGLISH var925)
(declare-const var1930 var1792) ; Statement: r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext 
(assert (not (= var1930 null-var1792)))
(define-const var2383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var1745 String (sqlBuffer/-29599980 var1930)) ; Statement: $r2 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> 
(assert true)
(define-const var1574 String (toString/-2075883882 var1745)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2486 String (trim/-847153721 var1574)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
;(assert (<init>/-1061048412 var2383 var2486)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var2383!1 String)
(assert (= var2383!1 var2486))
(declare-const var1930!1 var1792)
(assert (not (= var1930!1 null-var1792)))
(assert (= (sqlBuffer/-29599980 var1930!1) var2383!1)) ; Statement: r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> = $r1 
(define-const var2864 String (sqlBuffer/-29599980 var1930!1)) ; Statement: $r5 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> 
(assert true)
(define-const var713 String (toString/-2075883882 var2864)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1341 var925 var925-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var514 String (toUpperCase/398655892 var713 var1341)) ; Statement: r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r6) 
(assert true)
(define-const var2273 Int (length/-134980193 var514)) ; Statement: $i0 = virtualinvoke r8.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate> 
(assert (<= var2273 0)) ; Cond: $i0 <= 0 
(define-const var2657 var600 (delegate/-29599980 var1930!1)) ; Statement: $r10 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate> 
(define-const var2600 String (sqlBuffer/-29599980 var1930!1)) ; Statement: $r9 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> 
(assert true)
(define-const var3425 String (toString/-2075883882 var2600)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (appendSql/-1536305999 var2657 var3425)) ; Statement: virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: void appendSql(java.lang.String)>($r11) 

(declare-const var2657!1 var600)
(declare-const var3425!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), sqlBuffer/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), length/-134980193=([java.lang.String], int), delegate/-29599980=([org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext], org.apache.ibatis.scripting.xmltags.DynamicContext), appendSql/-1536305999=([org.apache.ibatis.scripting.xmltags.DynamicContext, java.lang.String], void)}
; {var1792=org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext, var1930=r0, var2383=$r1, var1745=$r2, var1574=$r3, var2486=$r4, var2864=$r5, var713=$r7, var925=java.util.Locale, var1341=$r6, var514=r8, var2273=$i0, var600=org.apache.ibatis.scripting.xmltags.DynamicContext, var2657=$r10, var2600=$r9, var3425=$r11}
; {org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext=var1792, r0=var1930, $r1=var2383, $r2=var1745, $r3=var1574, $r4=var2486, $r5=var2864, $r7=var713, java.util.Locale=var925, $r6=var1341, r8=var514, $i0=var2273, org.apache.ibatis.scripting.xmltags.DynamicContext=var600, $r10=var2657, $r9=var2600, $r11=var3425}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext;	$r1 = new java.lang.StringBuilder;	$r2 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer> = $r1;	$r5 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	r8 = virtualinvoke $r7.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r6);	$i0 = virtualinvoke r8.<java.lang.String: int length()>();	if $i0 <= 0 goto $r10 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate>;	$r10 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: org.apache.ibatis.scripting.xmltags.DynamicContext delegate>;	$r9 = r0.<org.apache.ibatis.scripting.xmltags.TrimSqlNode$FilteredDynamicContext: java.lang.StringBuilder sqlBuffer>;	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<org.apache.ibatis.scripting.xmltags.DynamicContext: void appendSql(java.lang.String)>($r11);	return
;block_num 2