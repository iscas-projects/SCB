(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3826 0)
(declare-sort var2727 0)
(declare-sort var2861 0)
(declare-sort var211 0)
(declare-sort var1061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var211_getMapper/1406248242 (var211) var1061)
(declare-fun var1061_mapFileName/-709258719 (var1061 String) (Array Int String))
(declare-const null-var3826 var3826)
(declare-const null-var2727 var2727)
(declare-const null-String String)
(declare-const null-var211 var211)
(declare-const var2727-separatorChar Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1632 var3826) ; Statement: r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic 
(assert (not (= var1632 null-var3826)))
(declare-const var2192 var2727) ; Statement: r16 := @parameter0: java.io.File 
(assert (not (= var2192 null-var2727)))
(declare-const var757 var2727) ; Statement: r18 := @parameter1: java.io.File 
(assert (not (= var757 null-var2727)))
(declare-const var131 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var131 null-String)))
(declare-const var1866 var211) ; Statement: r6 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter 
(assert (not (= var1866 null-var211)))
(define-const var443 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var443)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var443!1 String)
(assert (= var443!1 ""))
(define-const var1857 Int var2727-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2165 String (replace/1524665721 var131 46 var1857)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c0) 
(assert true)
(define-const var868 String (append/672562846 var443!1 var2165)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var443!2 String)
(assert (= var443!2 (str.++ var443!1 var2165)))
(assert true)
(define-const var3324 String (append/672562846 var868 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var868!1 String)
(assert (= var868!1 (str.++ var868 ".class")))
(assert true)
(define-const var3606 String (toString/-2075883882 var3324)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1584 var1061 (var211_getMapper/1406248242 var1866)) ; Statement: $r7 = interfaceinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper getMapper()>() 
(define-const var3444 (Array Int String) (var1061_mapFileName/-709258719 var1584 var3606)) ; Statement: r8 = interfaceinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r5) 
 ; Statement: if r8 != null goto i1 = lengthof r8 
(assert (not (not (= var3444 null-__Array__Int__String__)))) ; Negate: Cond: r8 != null  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var211_getMapper/1406248242=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), var1061_mapFileName/-709258719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, java.lang.String], java.lang.String[])}
; {var3826=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var1632=r19, var2727=java.io.File, var2192=r16, var757=r18, var131=r1, var2861=null_type, var211=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter, var1866=r6, var443=$r0, var1857=$c0, var2165=$r2, var868=$r3, var3324=$r4, var3606=r5, var1061=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var1584=$r7, var3444=r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var3826, r19=var1632, java.io.File=var2727, r16=var2192, r18=var757, r1=var131, null_type=var2861, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter=var211, r6=var1866, $r0=var443, $c0=var1857, $r2=var2165, $r3=var868, $r4=var3324, r5=var3606, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var1061, $r7=var1584, r8=var3444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic;	r16 := @parameter0: java.io.File;	r18 := @parameter1: java.io.File;	r1 := @parameter2: java.lang.String;	r6 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$c0 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, $c0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = interfaceinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.RmicAdapter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper getMapper()>();	r8 = interfaceinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r5);	if r8 != null goto i1 = lengthof r8;	return
;block_num 2