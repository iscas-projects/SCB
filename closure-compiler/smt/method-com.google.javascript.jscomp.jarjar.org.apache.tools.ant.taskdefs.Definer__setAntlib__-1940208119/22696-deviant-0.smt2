(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1526 0)
(declare-sort var798 0)
(declare-sort var1011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun definerSet/723307835 (var1526) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun setURI/-1670747781 (var1011 String) void)
(declare-fun cast-from-var1526-to-var1011 (var1526) var1011)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resource/723307835 (var1526) String)
(declare-const null-var1526 var1526)
(declare-const null-String String)
(declare-const var431 var1526) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer 
(assert (not (= var431 null-var1526)))
(declare-const var805 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var805 null-String)))
(define-const var3317 Bool (definerSet/723307835 var431)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
(assert (= (ite var3317 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1808 Bool (startsWith/-1785782452 var805 "antlib:")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1) 
(assert (not (= (ite var1808 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (setURI/-1670747781 (cast-from-var1526-to-var1011 var431) var805)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1) 

(declare-const var431!1 var1526)
(declare-const var805!1 String)
(define-const var2839 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2839)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2839!1 String)
(assert (= var2839!1 ""))
(define-const var3752 String "antlib:") ; Statement: $r3 = "antlib:" 
(assert true)
(define-const var812 Int (length/-134980193 var3752)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var812 0) (>= (str.len var805!1) var812)))))
(check-sat)
(get-model)
(get-unsat-core)
; {definerSet/723307835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), setURI/-1670747781=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition, java.lang.String], void), cast-from-var1526-to-var1011=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resource/723307835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], java.lang.String)}
; {var1526=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer, var431=r0, var805=r1, var798=null_type, var3317=$z0, var1808=$z1, var1011=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition, var2839=$r2, var3752=$r3, var812=$i0, var1308=$r4, var3251=$r5, var2166=$r6, var1215=$r7, var1155=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer=var1526, r0=var431, r1=var805, null_type=var798, $z0=var3317, $z1=var1808, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition=var1011, $r2=var2839, $r3=var3752, $i0=var812, $r4=var1308, $r5=var3251, $r6=var2166, $r7=var1215, $r8=var1155}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer;	r1 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	if $z1 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: void setURI(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = "antlib:";	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/antlib.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String resource> = $r8;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: boolean definerSet> = 1;	return
;block_num 3