(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort var3673 0)
(declare-sort var743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var743) void)
(declare-fun cast-from-var1880-to-var743 (var1880) var743)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun baseClassName/-1032202652 (var1880) String)
(declare-const null-var1880 var1880)
(declare-const null-String String)
(declare-const var1957 var1880) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter 
(assert (not (= var1957 null-var1880)))
(declare-const var2350 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2350 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1880-to-var743 var1957))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1957!1 var1880)
(assert true)
(define-const var3538 Int (lastIndexOf/-618837785 var2350 ".class")) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(".class") 
(define-const var2056 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 != $i3 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (= var3538 var2056))) ; Cond: i1 != $i3 
(assert (not (and true (and (>= 0 0) (>= (str.len var2350) var3538) (>= var3538 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1880-to-var743=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter], java.lang.Object), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), baseClassName/-1032202652=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter], java.lang.String)}
; {var1880=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter, var1957=r0, var2350=r1, var3673=null_type, var743=java.lang.Object, var3538=i1, var2056=$i3, var2829=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter=var1880, r0=var1957, r1=var2350, null_type=var3673, java.lang.Object=var743, i1=var3538, $i3=var2056, $r2=var2829}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(".class");	$i3 = (int) -1;	if i1 != $i3 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.InnerClassFilenameFilter: java.lang.String baseClassName> = $r2;	return
;block_num 2