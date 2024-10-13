(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3702 0)
(declare-sort var2235 0)
(declare-sort var183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getItemCount/565158045 (var2235) Int)
(declare-fun getItemAt/-1960190092 (var2235 Int) var183)
(declare-fun String_valueOf/-333372740 (var183) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun setSelectedItem/1943063843 (var2235 var183) void)
(declare-const null-var3702 var3702)
(declare-const null-var2235 var2235)
(declare-const null-Int Int)
(declare-const var2855 var3702) ; Statement: r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var2855 null-var3702)))
(declare-const var3071 var2235) ; Statement: r0 := @parameter0: javax.swing.JComboBox 
(assert (not (= var3071 null-var2235)))
(declare-const var2532 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2532 null-Int)))
(assert true)
(define-const var3299 Int (getItemCount/565158045 var3071)) ; Statement: i0 = virtualinvoke r0.<javax.swing.JComboBox: int getItemCount()>() 
(assert true)
(define-const var478 var183 (getItemAt/-1960190092 var3071 0)) ; Statement: r5 = virtualinvoke r0.<javax.swing.JComboBox: java.lang.Object getItemAt(int)>(0) 
(define-const var1701 String (String_valueOf/-333372740 var478)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r5) 
(define-const var3760 Int (Int_parseInt/1370970945 var1701)) ; Statement: i3 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r1) 
(define-const var3373 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto virtualinvoke r0.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>(r5) 
(assert (>= var3373 var3299)) ; Cond: i4 >= i0 
(assert true)
;(assert (setSelectedItem/1943063843 var3071 var478)) ; Statement: virtualinvoke r0.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>(r5) 

(declare-const var3071!1 var2235)
(declare-const var478!1 var183)
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getItemCount/565158045=([javax.swing.JComboBox], int), getItemAt/-1960190092=([javax.swing.JComboBox, int], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), setSelectedItem/1943063843=([javax.swing.JComboBox, java.lang.Object], void)}
; {var3702=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var2855=r4, var2235=javax.swing.JComboBox, var3071=r0, var2532=i2, var3299=i0, var183=java.lang.Object, var478=r5, var1701=$r1, var3760=i3, var3373=i4}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3702, r4=var2855, javax.swing.JComboBox=var2235, r0=var3071, i2=var2532, i0=var3299, java.lang.Object=var183, r5=var478, $r1=var1701, i3=var3760, i4=var3373}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r4 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: javax.swing.JComboBox;	i2 := @parameter1: int;	i0 = virtualinvoke r0.<javax.swing.JComboBox: int getItemCount()>();	r5 = virtualinvoke r0.<javax.swing.JComboBox: java.lang.Object getItemAt(int)>(0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r5);	i3 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r1);	i4 = 0;	if i4 >= i0 goto virtualinvoke r0.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>(r5);	virtualinvoke r0.<javax.swing.JComboBox: void setSelectedItem(java.lang.Object)>(r5);	return i3
;block_num 3