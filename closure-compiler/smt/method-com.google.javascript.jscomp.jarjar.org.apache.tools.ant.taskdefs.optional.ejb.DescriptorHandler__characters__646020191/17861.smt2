(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentText/960128408 (var3439) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3439 var3439)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var96 var3439) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var96 null-var3439)))
(declare-const var3425 (Array Int Int)) ; Statement: r4 := @parameter0: char[] 
(assert (not (= var3425 null-__Array__Int__Int__)))
(declare-const var1525 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1525 null-Int)))
(declare-const var379 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var379 null-Int)))
(define-const var3566 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3566)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3566!1 String)
(assert (= var3566!1 ""))
(define-const var2275 String (currentText/960128408 var96)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> 
(assert true)
(define-const var2042 String (append/672562846 var3566!1 var2275)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3566!2 String)
(assert (= var3566!2 (str.++ var3566!1 var2275)))
(define-const var1454 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1454 var3425 var1525 var379)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r4, i0, i1) 

(declare-const var1454!1 String)
(declare-const var3425!1 (Array Int Int))
(declare-const var1525!1 Int)
(declare-const var379!1 Int)
(assert true)
(define-const var922 String (append/672562846 var2042 var1454!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2042!1 String)
(assert (= var2042!1 (str.++ var2042 var1454!1)))
(assert true)
(define-const var1910 String (toString/-2075883882 var922)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var96!1 var3439)
(assert (not (= var96!1 null-var3439)))
(assert (= (currentText/960128408 var96!1) var1910)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentText/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-253222812=([java.lang.String, char[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3439=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var96=r1, var3425=r4, var1525=i0, var379=i1, var3566=$r0, var2275=$r2, var2042=$r5, var1454=$r3, var922=$r6, var1910=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var3439, r1=var96, r4=var3425, i0=var1525, i1=var379, $r0=var3566, $r2=var2275, $r5=var2042, $r3=var1454, $r6=var922, $r7=var1910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	r4 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText>;	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r4, i0, i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = $r7;	return
;block_num 1