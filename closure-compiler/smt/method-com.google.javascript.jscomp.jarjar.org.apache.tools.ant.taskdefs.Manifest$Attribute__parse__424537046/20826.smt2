(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1100 0)
(declare-sort var1893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun name/146580643 (var1100) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun setValue/-921508948 (var1100 String) void)
(declare-const null-var1100 var1100)
(declare-const null-String String)
(declare-const var16 var1100) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var16 null-var1100)))
(declare-const var2358 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2358 null-String)))
(assert true)
(define-const var1768 Int (indexOf/-1209756239 var2358 ": ")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(": ") 
(define-const var654 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1768 var654))) ; Cond: i0 != $i3 
(assert (and true (and (>= 0 0) (>= (str.len var2358) var1768) (>= var1768 0))))
(define-const var3580 String (substring/-1240304868 var2358 0 var1768)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(declare-const var16!1 var1100)
(assert (not (= var16!1 null-var1100)))
(assert (= (name/146580643 var16!1) var3580)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name> = $r2 
(define-const var1750 Int (+ var1768 2)) ; Statement: $i1 = i0 + 2 
(assert (and true (and (>= var1750 0) (>= (str.len var2358) var1750))))
(define-const var3994 String (substring/850833817 var2358 var1750)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
;(assert (setValue/-921508948 var16!1 var3994)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: void setValue(java.lang.String)>($r3) 

(declare-const var16!2 var1100)
(declare-const var3994!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), name/146580643=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), setValue/-921508948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, java.lang.String], void)}
; {var1100=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var16=r1, var2358=r0, var1893=null_type, var1768=i0, var654=$i3, var3580=$r2, var1750=$i1, var3994=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var1100, r1=var16, r0=var2358, null_type=var1893, i0=var1768, $i3=var654, $r2=var3580, $i1=var1750, $r3=var3994}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(": ");	$i3 = (int) -1;	if i0 != $i3 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.lang.String name> = $r2;	$i1 = i0 + 2;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: void setValue(java.lang.String)>($r3);	return
;block_num 2