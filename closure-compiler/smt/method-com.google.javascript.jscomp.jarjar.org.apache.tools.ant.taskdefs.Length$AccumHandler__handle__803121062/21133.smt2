(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2320 0)
(declare-sort var2571 0)
(declare-sort var3358 0)
(declare-sort var2731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1695233118 (var2571) Int)
(declare-fun this$0/359764083 (var2320) var3358)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1668676610 (var2571) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2731 String Int) void)
(declare-fun cast-from-var3358-to-var2731 (var3358) var2731)
(declare-const null-var2320 var2320)
(declare-const null-var2571 var2571)
(declare-const var3830 var2320) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler 
(assert (not (= var3830 null-var2320)))
(declare-const var1833 var2571) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1833 null-var2571)))
(assert true)
(define-const var1187 Int (getSize/1695233118 var1833)) ; Statement: l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>() 
(define-const var2145 Int (ite (> var1187 (- 1)) 1 (ite (< var1187 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum> 
(assert (not (not (= var2145 0)))) ; Negate: Cond: $b1 != 0  
(define-const var1101 var3358 (this$0/359764083 var3830)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length this$0> 
(define-const var3691 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3691)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3691!1 String)
(assert (= var3691!1 ""))
(assert true)
(define-const var410 String (append/672562846 var3691!1 "Size unknown for ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size unknown for ") 
(declare-const var3691!2 String)
(assert (= var3691!2 (str.++ var3691!1 "Size unknown for ")))
(assert true)
(define-const var255 String (toString/1668676610 var1833)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var2143 String (append/672562846 var410 var255)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var410!1 String)
(assert (= var410!1 (str.++ var410 var255)))
(assert true)
(define-const var3693 String (toString/-2075883882 var2143)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3358-to-var2731 var1101) var3693 1)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void log(java.lang.String,int)>($r7, 1) 

(declare-const var1101!1 var3358)
(declare-const var3693!1 String)
(declare-const var458 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1695233118=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), this$0/359764083=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3358-to-var2731=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2320=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler, var3830=r1, var2571=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1833=r0, var1187=l0, var2145=$b1, var3358=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length, var1101=$r3, var3691=$r2, var410=$r5, var255=$r4, var2143=$r6, var3693=$r7, var2731=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var458=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler=var2320, r1=var3830, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2571, r0=var1833, l0=var1187, $b1=var2145, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length=var3358, $r3=var1101, $r2=var3691, $r5=var410, $r4=var255, $r6=var2143, $r7=var3693, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2731, 1=var458}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>();	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length this$0>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size unknown for ");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void log(java.lang.String,int)>($r7, 1);	goto [?= return];	return
;block_num 3