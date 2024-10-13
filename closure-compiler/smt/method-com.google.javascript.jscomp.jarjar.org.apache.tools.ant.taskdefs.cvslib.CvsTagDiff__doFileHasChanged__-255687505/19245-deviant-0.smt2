(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var2554 0)
(declare-sort var439 0)
(declare-sort var1576 0)
(declare-sort var2476 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var1576-init () var1576)
(declare-fun <init>/-2093450607 (var1576 String String String) void)
(declare-fun var2554_add/328494887 (var2554 var2476) Bool)
(declare-fun cast-from-var1576-to-var2476 (var1576) var2476)
(declare-fun toString/-273996893 (var1576) String)
(declare-fun log/456963423 (var669 String Int) void)
(declare-fun cast-from-var1333-to-var669 (var1333) var669)
(declare-const null-var1333 var1333)
(declare-const null-var2554 var2554)
(declare-const null-String String)
(declare-const var3770 var1333) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff 
(assert (not (= var3770 null-var1333)))
(declare-const var2004 var2554) ; Statement: r7 := @parameter0: java.util.List 
(assert (not (= var2004 null-var2554)))
(declare-const var1700 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1700 null-String)))
(assert true)
(define-const var1880 Int (indexOf/-1209756239 var1700 " changed from revision ")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" changed from revision ") 
(define-const var3899 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1880 var3899))) ; Cond: i0 != $i7 
(assert (not (and true (and (>= 0 0) (>= (str.len var1700) var1880) (>= var1880 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var1576-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry), <init>/-2093450607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry, java.lang.String, java.lang.String, java.lang.String], void), var2554_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1576-to-var2476=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry], java.lang.Object), toString/-273996893=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1333-to-var669=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1333=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff, var3770=r8, var2554=java.util.List, var2004=r7, var1700=r0, var439=null_type, var1880=i0, var3899=$i7, var841=r1, var1092=i1, var2386=$r2, var3923=$i2, var3538=$i3, var2338=r3, var2142=$r4, var24=$i4, var96=$i5, var2765=r5, var1576=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry, var3660=$r10, var2476=java.lang.Object, var106=$r9, var669=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2309=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff=var1333, r8=var3770, java.util.List=var2554, r7=var2004, r0=var1700, null_type=var439, i0=var1880, $i7=var3899, r1=var841, i1=var1092, $r2=var2386, $i2=var3923, $i3=var3538, r3=var2338, $r4=var2142, $i4=var24, $i5=var96, r5=var2765, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry=var1576, $r10=var3660, java.lang.Object=var2476, $r9=var106, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var669, 3=var2309}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff;	r7 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" changed from revision ");	$i7 = (int) -1;	if i0 != $i7 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String,int)>(" to ", i0);	$r2 = " changed from revision ";	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	$i3 = i0 + $i2;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i3, i1);	$r4 = " to ";	$i4 = virtualinvoke $r4.<java.lang.String: int length()>();	$i5 = i1 + $i4;	r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i5);	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: void <init>(java.lang.String,java.lang.String,java.lang.String)>(r1, r5, r3);	interfaceinvoke r7.<java.util.List: boolean add(java.lang.Object)>($r10);	$r9 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String toString()>();	virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagDiff: void log(java.lang.String,int)>($r9, 3);	return 1
;block_num 2