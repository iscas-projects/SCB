(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort var3219 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialized/874339711 (var3219) Bool)
(declare-fun cast-from-var1196-to-var3219 (var1196) var3219)
(declare-fun line/-624025938 (var1196) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1196 var1196)
(declare-const null-String String)
(declare-const var2666 var1196) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments 
(assert (not (= var2666 null-var1196)))
(assert true)
(define-const var3178 Bool (getInitialized/874339711 (cast-from-var1196-to-var3219 var2666))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: boolean getInitialized()>() 
 ; Statement: if $z0 != 0 goto i3 = -1 
(assert (not (= (ite var3178 1 0) 0))) ; Cond: $z0 != 0 
(define-const var895 Int (- 1)) ; Statement: i3 = -1 
(define-const var3115 String (line/-624025938 var2666)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
 ; Statement: if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String readLine()>() 
(assert (not (= var3115 null-String))) ; Negate: Cond: $r1 == null  
(define-const var597 String (line/-624025938 var2666)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert (and true (and (> (str.len var597) 0) (<= 0 0))))
(define-const var895!1 Int (charAt/698050440 var597 0)) ; Statement: i3 = virtualinvoke $r12.<java.lang.String: char charAt(int)>(0) 
(define-const var1774 String (line/-624025938 var2666)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert true)
(define-const var588 Int (length/-134980193 var1774)) ; Statement: $i2 = virtualinvoke $r13.<java.lang.String: int length()>() 
 ; Statement: if $i2 != 1 goto $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> 
(assert (not (not (= var588 1)))) ; Negate: Cond: $i2 != 1  
(declare-const var2666!1 var1196)
(assert (not (= var2666!1 null-var1196)))
(assert (= (line/-624025938 var2666!1) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> = null 
 ; Statement: goto [?= return i3] 
(assert true) ; Non Conditional
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialized/874339711=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader], boolean), cast-from-var1196-to-var3219=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader), line/-624025938=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int)}
; {var1196=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments, var2666=r0, var3219=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader, var3178=$z0, var895=i3, var3115=$r1, var3944=null_type, var597=$r12, var1774=$r13, var588=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments=var1196, r0=var2666, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseFilterReader=var3219, $z0=var3178, i3=var895, $r1=var3115, null_type=var3944, $r12=var597, $r13=var1774, $i2=var588}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: boolean getInitialized()>();	if $z0 != 0 goto i3 = -1;	i3 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	if $r1 == null goto $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String readLine()>();	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	i3 = virtualinvoke $r12.<java.lang.String: char charAt(int)>(0);	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	$i2 = virtualinvoke $r13.<java.lang.String: int length()>();	if $i2 != 1 goto $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.StripLineComments: java.lang.String line> = null;	goto [?= return i3];	return i3
;block_num 5