(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3773 0)
(declare-sort var3134 0)
(declare-sort var124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ostr/154848238 (var3773) var124)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLhs/-759107248 (var3134) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var124 String) void)
(declare-const null-var3773 var3773)
(declare-const null-var3134 var3134)
(declare-const var1779 var3773) ; Statement: r0 := @this: org.javacc.jjdoc.TextGenerator 
(assert (not (= var1779 null-var3773)))
(declare-const var3310 var3134) ; Statement: r3 := @parameter0: org.javacc.parser.NormalProduction 
(assert (not (= var3310 null-var3134)))
(define-const var2666 var124 (ostr/154848238 var1779)) ; Statement: $r2 = r0.<org.javacc.jjdoc.TextGenerator: java.io.PrintWriter ostr> 
(define-const var741 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var741)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var741!1 String)
(assert (= var741!1 ""))
(assert true)
(define-const var2180 String (append/672562846 var741!1 "\t")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t") 
(declare-const var741!2 String)
(assert (= var741!2 (str.++ var741!1 "\t")))
(assert true)
(define-const var3180 String (getLhs/-759107248 var3310)) ; Statement: $r4 = virtualinvoke r3.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var573 String (append/672562846 var2180 var3180)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2180!1 String)
(assert (= var2180!1 (str.++ var2180 var3180)))
(assert true)
(define-const var3023 String (append/672562846 var573 "\t:=\t")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t:=\t") 
(declare-const var573!1 String)
(assert (= var573!1 (str.++ var573 "\t:=\t")))
(assert true)
(define-const var151 String (toString/-2075883882 var3023)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var2666 var151)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void print(java.lang.String)>($r8) 

(declare-const var2666!1 var124)
(declare-const var151!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ostr/154848238=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void)}
; {var3773=org.javacc.jjdoc.TextGenerator, var1779=r0, var3134=org.javacc.parser.NormalProduction, var3310=r3, var124=java.io.PrintWriter, var2666=$r2, var741=$r1, var2180=$r5, var3180=$r4, var573=$r6, var3023=$r7, var151=$r8}
; {org.javacc.jjdoc.TextGenerator=var3773, r0=var1779, org.javacc.parser.NormalProduction=var3134, r3=var3310, java.io.PrintWriter=var124, $r2=var2666, $r1=var741, $r5=var2180, $r4=var3180, $r6=var573, $r7=var3023, $r8=var151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.TextGenerator;	r3 := @parameter0: org.javacc.parser.NormalProduction;	$r2 = r0.<org.javacc.jjdoc.TextGenerator: java.io.PrintWriter ostr>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t");	$r4 = virtualinvoke r3.<org.javacc.parser.NormalProduction: java.lang.String getLhs()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\t:=\t");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void print(java.lang.String)>($r8);	return
;block_num 1