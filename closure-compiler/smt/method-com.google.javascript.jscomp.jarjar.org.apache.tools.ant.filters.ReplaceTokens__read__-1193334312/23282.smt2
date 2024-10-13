(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var196 0)
(declare-sort var2128 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var2128) Bool)
(declare-fun cast-from-var196-to-var2128 (var196) var2128)
(declare-fun resolvedTokensBuilt/1229857244 (var196) Bool)
(declare-fun replaceData/1229857244 (var196) String)
(declare-fun replaceIndex/1229857244 (var196) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var196 var196)
(declare-const null-String String)
(declare-const var754 var196) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens 
(assert (not (= var754 null-var196)))
(assert true)
(define-const var1511 Bool (getInitialized/874339711 (cast-from-var196-to-var2128 var754))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean resolvedTokensBuilt> 
(assert (not (= (ite var1511 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1694 Bool (resolvedTokensBuilt/1229857244 var754)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean resolvedTokensBuilt> 
 ; Statement: if $z1 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> 
(assert (not (= (ite var1694 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3291 String (replaceData/1229857244 var754)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert (not (= var3291 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2566 Int (replaceIndex/1229857244 var754)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex> 
(define-const var2199 String (replaceData/1229857244 var754)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> 
(assert true)
(define-const var3385 Int (length/-134980193 var2199)) ; Statement: $i6 = virtualinvoke $r24.<java.lang.String: int length()>() 
 ; Statement: if $i5 >= $i6 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> = null 
(assert (not (>= var2566 var3385))) ; Negate: Cond: $i5 >= $i6  
(define-const var3450 String (replaceData/1229857244 var754)) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> 
(define-const var1585 Int (replaceIndex/1229857244 var754)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex> 
(define-const var954 Int (+ var1585 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var754!1 var196)
(assert (not (= var754!1 null-var196)))
(assert (= (replaceIndex/1229857244 var754!1) var954)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex> = $i8 
(assert (and true (and (> (str.len var3450) var1585) (<= 0 var1585))))
(define-const var1657 Int (charAt/698050440 var3450 var1585)) ; Statement: $c9 = virtualinvoke $r25.<java.lang.String: char charAt(int)>($i7) 
(define-const var2764 Int (cast-from-Int-to-Int var1657)) ; Statement: $i12 = (int) $c9 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var196-to-var2128=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), resolvedTokensBuilt/1229857244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], boolean), replaceData/1229857244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], java.lang.String), replaceIndex/1229857244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var196=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens, var754=r0, var2128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var1511=$z0, var1694=$z1, var3291=$r1, var2200=null_type, var2566=$i5, var2199=$r24, var3385=$i6, var3450=$r25, var1585=$i7, var954=$i8, var1657=$c9, var2764=$i12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens=var196, r0=var754, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var2128, $z0=var1511, $z1=var1694, $r1=var3291, null_type=var2200, $i5=var2566, $r24=var2199, $i6=var3385, $r25=var3450, $i7=var1585, $i8=var954, $c9=var1657, $i12=var2764}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean getInitialized()>();	if $z0 != 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean resolvedTokensBuilt>;	$z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: boolean resolvedTokensBuilt>;	if $z1 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex>;	$r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData>;	$i6 = virtualinvoke $r24.<java.lang.String: int length()>();	if $i5 >= $i6 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData> = null;	$r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String replaceData>;	$i7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex>;	$i8 = $i7 + 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: int replaceIndex> = $i8;	$c9 = virtualinvoke $r25.<java.lang.String: char charAt(int)>($i7);	$i12 = (int) $c9;	return $i12
;block_num 5