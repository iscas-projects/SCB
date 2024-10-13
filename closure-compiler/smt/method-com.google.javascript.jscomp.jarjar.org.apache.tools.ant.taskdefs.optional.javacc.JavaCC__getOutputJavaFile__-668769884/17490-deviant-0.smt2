(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var3187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var3187) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3187-init () var3187)
(declare-fun <init>/-1681595970 (var3187 String) void)
(declare-const null-var3797 var3797)
(declare-const null-var3187 var3187)
(declare-const var3187-separator String)
(declare-const var1705 var3797) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC 
(assert (not (= var1705 null-var3797)))
(declare-const var1389 var3187) ; Statement: r5 := @parameter0: java.io.File 
(assert (not (= var1389 null-var3187)))
(declare-const var1298 var3187) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var1298 null-var3187)))
(assert true)
(define-const var82 String (getPath/-1385219261 var1298)) ; Statement: r17 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(define-const var2525 String var3187-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1886 Int (lastIndexOf/-618837785 var82 var2525)) ; Statement: i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(java.lang.String)>($r1) 
(define-const var358 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 == $i4 goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (= var1886 var358)) ; Cond: i0 == $i4 
(assert true)
(define-const var1525 Int (lastIndexOf/-1292097097 var82 46)) ; Statement: $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var143 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i2 == $i6 goto $r20 = new java.lang.StringBuilder 
(assert (not (= var1525 var143))) ; Negate: Cond: $i2 == $i6  
(define-const var2055 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2055)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2055!1 String)
(assert (= var2055!1 ""))
(assert (not (and true (and (>= 0 0) (>= (str.len var82) var1525) (>= var1525 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3187-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var3797=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC, var1705=r16, var3187=java.io.File, var1389=r5, var1298=r0, var82=r17, var2525=$r1, var1886=i0, var358=$i4, var1525=$i2, var143=$i6, var2055=$r19, var2338=$r13, var3965=$r14, var3366=$r15, var3308=r18, var2752=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC=var3797, r16=var1705, java.io.File=var3187, r5=var1389, r0=var1298, r17=var82, $r1=var2525, i0=var1886, $i4=var358, $i2=var1525, $i6=var143, $r19=var2055, $r13=var2338, $r14=var3965, $r15=var3366, r18=var3308, $r22=var2752}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC;	r5 := @parameter0: java.io.File;	r0 := @parameter1: java.io.File;	r17 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r1 = <java.io.File: java.lang.String separator>;	i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(java.lang.String)>($r1);	$i4 = (int) -1;	if i0 == $i4 goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46);	$i6 = (int) -1;	if $i2 == $i6 goto $r20 = new java.lang.StringBuilder;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r14 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= (branch)];	if r5 == null goto $r22 = new java.io.File;	$r22 = new java.io.File;	specialinvoke $r22.<java.io.File: void <init>(java.lang.String)>(r18);	return $r22
;block_num 5