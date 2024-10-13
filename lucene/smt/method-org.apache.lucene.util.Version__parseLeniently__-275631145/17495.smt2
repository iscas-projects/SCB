(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1547 0)
(declare-sort var3258 0)
(declare-sort var145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var3258) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var3258-ROOT var3258)
(declare-const var145-LATEST var145)
(declare-const var1386 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1386 null-String)))
(define-const var3819 var3258 var3258-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var324 String (toUpperCase/398655892 var1386 var3819)) ; Statement: r10 = virtualinvoke r9.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0) 
(define-const var2996 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3376 Int (hashCode/-467973558 var324)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2056551545: goto $z1 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("LATEST");     case -1009464132: goto $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("LUCENE_CURRENT");     default: goto lookupswitch(b1) {     case 0: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     case 1: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     default: goto $r2 = virtualinvoke r10.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^LUCENE_(\\d+)_(\\d+)_(\\d+)$", "$1.$2.$3"); }; } 
(assert (and (not (= var3376 (- 1009464132))) (and (not (= var3376 (- 2056551545))) true))) ; Intersect: Negate: Cond: $i0 == -1009464132   and Intersect: Negate: Cond: $i0 == -2056551545   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     case 1: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     default: goto $r2 = virtualinvoke r10.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^LUCENE_(\\d+)_(\\d+)_(\\d+)$", "$1.$2.$3"); } 
(assert (and (= var2996 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var113 var145 var145-LATEST) ; Statement: $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1386=r9, var1547=null_type, var3258=java.util.Locale, var3819=$r0, var324=r10, var2996=b1, var3376=$i0, var145=org.apache.lucene.util.Version, var113=$r1}
; {r9=var1386, null_type=var1547, java.util.Locale=var3258, $r0=var3819, r10=var324, b1=var2996, $i0=var3376, org.apache.lucene.util.Version=var145, $r1=var113}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r9 := @parameter0: java.lang.String;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	r10 = virtualinvoke r9.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r0);	b1 = -1;	$i0 = virtualinvoke r10.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2056551545: goto $z1 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("LATEST");     case -1009464132: goto $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("LUCENE_CURRENT");     default: goto lookupswitch(b1) {     case 0: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     case 1: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     default: goto $r2 = virtualinvoke r10.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^LUCENE_(\\d+)_(\\d+)_(\\d+)$", "$1.$2.$3"); }; };	lookupswitch(b1) {     case 0: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     case 1: goto $r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;     default: goto $r2 = virtualinvoke r10.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^LUCENE_(\\d+)_(\\d+)_(\\d+)$", "$1.$2.$3"); };	$r1 = <org.apache.lucene.util.Version: org.apache.lucene.util.Version LATEST>;	return $r1
;block_num 3