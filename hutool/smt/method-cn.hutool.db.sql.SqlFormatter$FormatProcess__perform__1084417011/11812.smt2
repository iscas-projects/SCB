(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/467713178 (var40) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/467713178 (var40) var2043)
(declare-fun hasMoreTokens/711654492 (var2043) Bool)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var40 var40)
(declare-const var771 var40) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var771 null-var40)))
(define-const var1865 String (result/467713178 var771)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> 
(assert true)
;(assert (append/1560614132 var1865 "\n    ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n    ") 
(declare-const var1865!1 String)
(assert (str.prefixof var1865 var1865!1))
(assert true) ; Non Conditional
(define-const var1003 var2043 (tokens/467713178 var771)) ; Statement: $r65 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.StringTokenizer tokens> 
(assert true)
(define-const var2080 Bool (hasMoreTokens/711654492 var1003)) ; Statement: $z22 = virtualinvoke $r65.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z22 == 0 goto $r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> 
(assert (= (ite var2080 1 0) 0)) ; Cond: $z22 == 0 
(define-const var3082 String (result/467713178 var771)) ; Statement: $r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> 
(assert true)
(define-const var1812 String (toString/-222306083 var3082)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {result/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), tokens/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.util.StringTokenizer), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var40=cn.hutool.db.sql.SqlFormatter$FormatProcess, var771=r0, var1865=$r1, var2043=java.util.StringTokenizer, var1003=$r65, var2080=$z22, var3082=$r2, var1812=$r3}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var40, r0=var771, $r1=var1865, java.util.StringTokenizer=var2043, $r65=var1003, $z22=var2080, $r2=var3082, $r3=var1812}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n    ");	$r65 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.StringTokenizer tokens>;	$z22 = virtualinvoke $r65.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z22 == 0 goto $r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result>;	$r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3