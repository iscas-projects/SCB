(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var1412) Bool)
(declare-fun cast-from-var815-to-var1412 (var815) var1412)
(declare-fun unicodeBuf/-419429494 (var815) String)
(declare-fun length/-1112840705 (String) Int)
(declare-fun charAt/-1311293464 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun deleteCharAt/1939943076 (String Int) String)
(declare-const null-var815 var815)
(declare-const var2771 var815) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode 
(assert (not (= var2771 null-var815)))
(assert true)
(define-const var2104 Bool (getInitialized/874339711 (cast-from-var815-to-var1412 var2771))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert (not (= (ite var2104 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2360 String (unicodeBuf/-419429494 var2771)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert true)
(define-const var20 Int (length/-1112840705 var2360)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in> 
(assert (not (<= var20 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1862 String (unicodeBuf/-419429494 var2771)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert true)
(define-const var2440 Int (charAt/-1311293464 var1862 0)) ; Statement: $c3 = virtualinvoke $r4.<java.lang.StringBuffer: char charAt(int)>(0) 
(define-const var314 Int (cast-from-Int-to-Int var2440)) ; Statement: $i4 = (int) $c3 
(define-const var1486 Int var314) ; Statement: i2 = $i4 
(define-const var571 String (unicodeBuf/-419429494 var2771)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> 
(assert true)
;(assert (deleteCharAt/1939943076 var571 0)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer deleteCharAt(int)>(0) 

(declare-const var571!1 String)
(declare-const var1641 Int)
 ; Statement: goto [?= return i2] 
(assert true) ; Non Conditional
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var815-to-var1412=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), unicodeBuf/-419429494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), charAt/-1311293464=([java.lang.StringBuffer, int], char), cast-from-Int-to-Int=([char], int), deleteCharAt/1939943076=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var815=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode, var2771=r0, var1412=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var2104=$z0, var2360=$r1, var20=$i0, var1862=$r4, var2440=$c3, var314=$i4, var1486=i2, var571=$r5, var1641=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode=var815, r0=var2771, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var1412, $z0=var2104, $r1=var2360, $i0=var20, $r4=var1862, $c3=var2440, $i4=var314, i2=var1486, $r5=var571, 0=var1641}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: char charAt(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer deleteCharAt(int)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: char charAt(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer deleteCharAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: boolean getInitialized()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuffer: int length()>();	if $i0 <= 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.io.Reader in>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	$c3 = virtualinvoke $r4.<java.lang.StringBuffer: char charAt(int)>(0);	$i4 = (int) $c3;	i2 = $i4;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf>;	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer deleteCharAt(int)>(0);	goto [?= return i2];	return i2
;block_num 4