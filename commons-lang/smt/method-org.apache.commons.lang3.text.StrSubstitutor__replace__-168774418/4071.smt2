(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2703 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1615-init () var1615)
(declare-fun length/-1112840705 (String) Int)
(declare-fun <init>/-1391885838 (var1615 Int) void)
(declare-fun append/603806934 (var1615 String) var1615)
(declare-fun length/-360784002 (var1615) Int)
(declare-fun substitute/885254684 (var2703 var1615 Int Int) Bool)
(declare-fun toString/-20424322 (var1615) String)
(declare-const null-var2703 var2703)
(declare-const null-String String)
(declare-const var1841 var2703) ; Statement: r3 := @this: org.apache.commons.lang3.text.StrSubstitutor 
(assert (not (= var1841 null-var2703)))
(declare-const var1715 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1715 null-String)))
 ; Statement: if r0 != null goto $r1 = new org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1715 null-String))) ; Cond: r0 != null 
(define-const var1947 var1615 var1615-init) ; Statement: $r1 = new org.apache.commons.lang3.text.StrBuilder 
(assert true)
(define-const var965 Int (length/-1112840705 var1715)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(assert true)
;(assert (<init>/-1391885838 var1947 var965)) ; Statement: specialinvoke $r1.<org.apache.commons.lang3.text.StrBuilder: void <init>(int)>($i0) 

(declare-const var1947!1 var1615)
(declare-const var965!1 Int)
(assert true)
(define-const var2552 var1615 (append/603806934 var1947!1 var1715)) ; Statement: r2 = virtualinvoke $r1.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.StringBuffer)>(r0) 
(assert true)
(define-const var3287 Int (length/-360784002 var2552)) ; Statement: $i1 = virtualinvoke r2.<org.apache.commons.lang3.text.StrBuilder: int length()>() 
(assert true)
;(assert (substitute/885254684 var1841 var2552 0 var3287)) ; Statement: virtualinvoke r3.<org.apache.commons.lang3.text.StrSubstitutor: boolean substitute(org.apache.commons.lang3.text.StrBuilder,int,int)>(r2, 0, $i1) 

(declare-const var1841!1 var2703)
(declare-const var2552!1 var1615)
(declare-const var3555 Int)
(declare-const var3287!1 Int)
(assert true)
(define-const var2607 String (toString/-20424322 var2552!1)) ; Statement: $r4 = virtualinvoke r2.<org.apache.commons.lang3.text.StrBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1615-init=([], org.apache.commons.lang3.text.StrBuilder), length/-1112840705=([java.lang.StringBuffer], int), <init>/-1391885838=([org.apache.commons.lang3.text.StrBuilder, int], void), append/603806934=([org.apache.commons.lang3.text.StrBuilder, java.lang.StringBuffer], org.apache.commons.lang3.text.StrBuilder), length/-360784002=([org.apache.commons.lang3.text.StrBuilder], int), substitute/885254684=([org.apache.commons.lang3.text.StrSubstitutor, org.apache.commons.lang3.text.StrBuilder, int, int], boolean), toString/-20424322=([org.apache.commons.lang3.text.StrBuilder], java.lang.String)}
; {var2703=org.apache.commons.lang3.text.StrSubstitutor, var1841=r3, var1715=r0, var1615=org.apache.commons.lang3.text.StrBuilder, var1947=$r1, var965=$i0, var2552=r2, var3287=$i1, var3555=0, var2607=$r4}
; {org.apache.commons.lang3.text.StrSubstitutor=var2703, r3=var1841, r0=var1715, org.apache.commons.lang3.text.StrBuilder=var1615, $r1=var1947, $i0=var965, r2=var2552, $i1=var3287, 0=var3555, $r4=var2607}
;seq <java.lang.StringBuffer: int length()>;	<org.apache.commons.lang3.text.StrBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r3 := @this: org.apache.commons.lang3.text.StrSubstitutor;	r0 := @parameter0: java.lang.StringBuffer;	if r0 != null goto $r1 = new org.apache.commons.lang3.text.StrBuilder;	$r1 = new org.apache.commons.lang3.text.StrBuilder;	$i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	specialinvoke $r1.<org.apache.commons.lang3.text.StrBuilder: void <init>(int)>($i0);	r2 = virtualinvoke $r1.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.StringBuffer)>(r0);	$i1 = virtualinvoke r2.<org.apache.commons.lang3.text.StrBuilder: int length()>();	virtualinvoke r3.<org.apache.commons.lang3.text.StrSubstitutor: boolean substitute(org.apache.commons.lang3.text.StrBuilder,int,int)>(r2, 0, $i1);	$r4 = virtualinvoke r2.<org.apache.commons.lang3.text.StrBuilder: java.lang.String toString()>();	return $r4
;block_num 2