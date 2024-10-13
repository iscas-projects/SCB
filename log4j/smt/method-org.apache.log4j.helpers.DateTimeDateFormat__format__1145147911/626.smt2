(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2195 0)
(declare-sort var1118 0)
(declare-sort var2494 0)
(declare-sort var2128 0)
(declare-sort var817 0)
(declare-sort var3597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun calendar/-379288326 (var817) var2128)
(declare-fun cast-from-var2195-to-var817 (var2195) var817)
(declare-fun setTime/-1821537528 (var2128 var1118) void)
(declare-fun get/335439681 (var2128 Int) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun shortMonths/207891059 (var2195) (Array Int String))
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun format/-1212771746 (var3597 var1118 String var2494) String)
(declare-fun cast-from-var2195-to-var3597 (var2195) var3597)
(declare-const null-var2195 var2195)
(declare-const null-var1118 var1118)
(declare-const null-String String)
(declare-const null-var2494 var2494)
(declare-const var3297 var2195) ; Statement: r0 := @this: org.apache.log4j.helpers.DateTimeDateFormat 
(assert (not (= var3297 null-var2195)))
(declare-const var3867 var1118) ; Statement: r1 := @parameter0: java.util.Date 
(assert (not (= var3867 null-var1118)))
(declare-const var3406 String) ; Statement: r4 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3406 null-String)))
(declare-const var1145 var2494) ; Statement: r9 := @parameter2: java.text.FieldPosition 
(assert (not (= var1145 null-var2494)))
(define-const var35 var2128 (calendar/-379288326 (cast-from-var2195-to-var817 var3297))) ; Statement: $r2 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar> 
(assert true)
;(assert (setTime/-1821537528 var35 var3867)) ; Statement: virtualinvoke $r2.<java.util.Calendar: void setTime(java.util.Date)>(r1) 

(declare-const var35!1 var2128)
(declare-const var3867!1 var1118)
(define-const var2429 var2128 (calendar/-379288326 (cast-from-var2195-to-var817 var3297))) ; Statement: $r3 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar> 
(assert true)
(define-const var1766 Int (get/335439681 var2429 5)) ; Statement: i0 = virtualinvoke $r3.<java.util.Calendar: int get(int)>(5) 
 ; Statement: if i0 >= 10 goto virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert (>= var1766 10)) ; Cond: i0 >= 10 
(assert true)
;(assert (append/1845021834 var3406 var1766)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var3406!1 String)
(declare-const var1766!1 Int)
(assert true)
;(assert (append/1183289509 var3406!1 32)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3406!2 String)
(declare-const var383 Int)
(define-const var1616 (Array Int String) (shortMonths/207891059 var3297)) ; Statement: $r6 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.lang.String[] shortMonths> 
(define-const var3865 var2128 (calendar/-379288326 (cast-from-var2195-to-var817 var3297))) ; Statement: $r5 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar> 
(assert true)
(define-const var367 Int (get/335439681 var3865 2)) ; Statement: $i1 = virtualinvoke $r5.<java.util.Calendar: int get(int)>(2) 
(define-const var2945 String (select var1616 var367)) ; Statement: $r7 = $r6[$i1] 
(assert true)
;(assert (append/1560614132 var3406!2 var2945)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3406!3 String)
(assert (str.prefixof var3406!2 var3406!3))
(assert true)
;(assert (append/1183289509 var3406!3 32)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3406!4 String)
(declare-const var383!1 Int)
(define-const var2716 var2128 (calendar/-379288326 (cast-from-var2195-to-var817 var3297))) ; Statement: $r8 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar> 
(assert true)
(define-const var59 Int (get/335439681 var2716 1)) ; Statement: $i2 = virtualinvoke $r8.<java.util.Calendar: int get(int)>(1) 
(assert true)
;(assert (append/1845021834 var3406!4 var59)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2) 

(declare-const var3406!5 String)
(declare-const var59!1 Int)
(assert true)
;(assert (append/1183289509 var3406!5 32)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3406!6 String)
(declare-const var383!2 Int)
(assert true)
(define-const var1252 String (format/-1212771746 (cast-from-var2195-to-var3597 var3297) var3867!1 var3406!6 var1145)) ; Statement: $r10 = specialinvoke r0.<org.apache.log4j.helpers.AbsoluteTimeDateFormat: java.lang.StringBuffer format(java.util.Date,java.lang.StringBuffer,java.text.FieldPosition)>(r1, r4, r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {calendar/-379288326=([java.text.DateFormat], java.util.Calendar), cast-from-var2195-to-var817=([org.apache.log4j.helpers.DateTimeDateFormat], java.text.DateFormat), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), get/335439681=([java.util.Calendar, int], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), shortMonths/207891059=([org.apache.log4j.helpers.DateTimeDateFormat], java.lang.String[]), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), format/-1212771746=([org.apache.log4j.helpers.AbsoluteTimeDateFormat, java.util.Date, java.lang.StringBuffer, java.text.FieldPosition], java.lang.StringBuffer), cast-from-var2195-to-var3597=([org.apache.log4j.helpers.DateTimeDateFormat], org.apache.log4j.helpers.AbsoluteTimeDateFormat)}
; {var2195=org.apache.log4j.helpers.DateTimeDateFormat, var3297=r0, var1118=java.util.Date, var3867=r1, var3406=r4, var2494=java.text.FieldPosition, var1145=r9, var2128=java.util.Calendar, var817=java.text.DateFormat, var35=$r2, var2429=$r3, var1766=i0, var383=32, var1616=$r6, var3865=$r5, var367=$i1, var2945=$r7, var2716=$r8, var59=$i2, var3597=org.apache.log4j.helpers.AbsoluteTimeDateFormat, var1252=$r10}
; {org.apache.log4j.helpers.DateTimeDateFormat=var2195, r0=var3297, java.util.Date=var1118, r1=var3867, r4=var3406, java.text.FieldPosition=var2494, r9=var1145, java.util.Calendar=var2128, java.text.DateFormat=var817, $r2=var35, $r3=var2429, i0=var1766, 32=var383, $r6=var1616, $r5=var3865, $i1=var367, $r7=var2945, $r8=var2716, $i2=var59, org.apache.log4j.helpers.AbsoluteTimeDateFormat=var3597, $r10=var1252}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.DateTimeDateFormat;	r1 := @parameter0: java.util.Date;	r4 := @parameter1: java.lang.StringBuffer;	r9 := @parameter2: java.text.FieldPosition;	$r2 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar>;	virtualinvoke $r2.<java.util.Calendar: void setTime(java.util.Date)>(r1);	$r3 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar>;	i0 = virtualinvoke $r3.<java.util.Calendar: int get(int)>(5);	if i0 >= 10 goto virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r6 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.lang.String[] shortMonths>;	$r5 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar>;	$i1 = virtualinvoke $r5.<java.util.Calendar: int get(int)>(2);	$r7 = $r6[$i1];	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r8 = r0.<org.apache.log4j.helpers.DateTimeDateFormat: java.util.Calendar calendar>;	$i2 = virtualinvoke $r8.<java.util.Calendar: int get(int)>(1);	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2);	virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r10 = specialinvoke r0.<org.apache.log4j.helpers.AbsoluteTimeDateFormat: java.lang.StringBuffer format(java.util.Date,java.lang.StringBuffer,java.text.FieldPosition)>(r1, r4, r9);	return $r10
;block_num 2