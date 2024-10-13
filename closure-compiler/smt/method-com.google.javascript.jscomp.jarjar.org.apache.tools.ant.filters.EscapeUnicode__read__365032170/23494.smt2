(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1828 0)
(declare-sort var1596 0)
(declare-sort var3095 0)
(declare-sort var2727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var1596) Bool)
(declare-fun cast-from-var1828-to-var1596 (var1828) var1596)
(declare-fun unicodeBuf/-419429494 (var1828) String)
(declare-fun length/-1112840705 (String) Int)
(declare-fun in/-1233315209 (var2727) var3095)
(declare-fun cast-from-var1828-to-var2727 (var1828) var2727)
(declare-fun read/2055644853 (var3095) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1828 var1828)
(declare-const var55 var1828) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode 
(assert (not (= var55 null-var1828)))
(assert true)
(define-const var384 Bool (getInitialized/874339711 (cast-from-var1828-to-var1596 var55))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert (not (= (ite var384 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2430 String (unicodeBuf/-419429494 var55)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert true)
(define-const var2562 Int (length/-1112840705 var2430)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in> 
(assert (<= var2562 0)) ; Cond: $i0 <= 0 
(define-const var246 var3095 (in/-1233315209 (cast-from-var1828-to-var2727 var55))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in> 
(assert true)
(define-const var2362 Int (read/2055644853 var246)) ; Statement: i2 = virtualinvoke $r2.<java.io.Reader: int read()>() 
(define-const var3040 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i2 == $i6 goto return i2 
(assert (= var2362 var3040)) ; Cond: i2 == $i6 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var1828-to-var1596=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), unicodeBuf/-419429494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), in/-1233315209=([java.io.FilterReader], java.io.Reader), cast-from-var1828-to-var2727=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], java.io.FilterReader), read/2055644853=([java.io.Reader], int), cast-from-Int-to-Int=([int], int)}
; {var1828=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode, var55=r0, var1596=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var384=$z0, var2430=$r1, var2562=$i0, var3095=java.io.Reader, var2727=java.io.FilterReader, var246=$r2, var2362=i2, var3040=$i6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode=var1828, r0=var55, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var1596, $z0=var384, $r1=var2430, $i0=var2562, java.io.Reader=var3095, java.io.FilterReader=var2727, $r2=var246, i2=var2362, $i6=var3040}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: boolean getInitialized()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>();	if $i0 <= 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in>;	i2 = virtualinvoke $r2.<java.io.Reader: int read()>();	$i6 = (int) -1;	if i2 == $i6 goto return i2;	return i2
;block_num 4