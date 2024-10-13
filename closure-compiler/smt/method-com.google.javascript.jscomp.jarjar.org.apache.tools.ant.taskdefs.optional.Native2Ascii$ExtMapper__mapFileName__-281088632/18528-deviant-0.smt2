(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2698 0)
(declare-sort var3782 0)
(declare-sort var1996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-2113169594 (var2698) var1996)
(declare-fun var1996_access$100/894178095 (var1996) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2698 var2698)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3915 var2698) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper 
(assert (not (= var3915 null-var2698)))
(declare-const var648 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var648 null-String)))
(assert true)
(define-const var857 Int (lastIndexOf/-1292097097 var648 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 < 0 goto $r1 = newarray (java.lang.String)[1] 
(assert (not (< var857 0))) ; Negate: Cond: i0 < 0  
(define-const var2716 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[1] 
(define-const var3962 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3962)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3962!1 String)
(assert (= var3962!1 ""))
(assert (not (and true (and (>= 0 0) (>= (str.len var648) var857) (>= var857 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-2113169594=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii), var1996_access$100/894178095=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2698=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper, var3915=r3, var648=r0, var3782=null_type, var857=i0, var2716=$r9, var3962=$r10, var3743=$r11, var726=$r14, var1996=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii, var2157=$r12, var3618=$r13, var3155=$r15, var470=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper=var2698, r3=var3915, r0=var648, null_type=var3782, i0=var857, $r9=var2716, $r10=var3962, $r11=var3743, $r14=var726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii=var1996, $r12=var2157, $r13=var3618, $r15=var3155, $r16=var470}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 < 0 goto $r1 = newarray (java.lang.String)[1];	$r9 = newarray (java.lang.String)[1];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii$ExtMapper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii this$0>;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: java.lang.String access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[0] = $r16;	return $r9
;block_num 2