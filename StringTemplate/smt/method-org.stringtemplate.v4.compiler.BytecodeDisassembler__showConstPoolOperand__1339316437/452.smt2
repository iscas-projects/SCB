(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var10 0)
(declare-sort var3967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun code/1498274111 (var10) var3967)
(declare-fun strings/1377009226 (var3967) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var10 var10)
(declare-const null-Int Int)
(declare-const var2634 var10) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler 
(assert (not (= var2634 null-var10)))
(declare-const var2294 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2294 null-Int)))
(define-const var2027 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2027)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2027!1 String)
(assert (= var2027!1 ""))
(assert true)
;(assert (append/672562846 var2027!1 "#")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2027!2 String)
(assert (= var2027!2 (str.++ var2027!1 "#")))
(assert true)
;(assert (append/-1001720160 var2027!2 var2294)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2027!3 String)
(assert (str.prefixof var2027!2 var2027!3))
(define-const var3519 String "<bad string index>") ; Statement: r16 = "<bad string index>" 
(define-const var3942 var3967 (code/1498274111 var2634)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code> 
(define-const var3207 (Array Int String) (strings/1377009226 var3942)) ; Statement: $r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String[] strings> 
(define-const var1537 Int (getLength-Arr-String-1 var3207)) ; Statement: $i1 = lengthof $r3 
 ; Statement: if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(assert (>= var2294 var1537)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/672562846 var2027!3 ":")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2027!4 String)
(assert (= var2027!4 (str.++ var2027!3 ":")))
(assert true)
;(assert (append/672562846 var2027!4 var3519)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var2027!5 String)
(assert (= var2027!5 (str.++ var2027!4 var3519)))
(assert true)
(define-const var3889 String (toString/-2075883882 var2027!5)) ; Statement: $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), code/1498274111=([org.stringtemplate.v4.compiler.BytecodeDisassembler], org.stringtemplate.v4.compiler.CompiledST), strings/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var10=org.stringtemplate.v4.compiler.BytecodeDisassembler, var2634=r1, var2294=i0, var2027=$r0, var3519=r16, var3967=org.stringtemplate.v4.compiler.CompiledST, var3942=$r2, var3207=$r3, var1537=$i1, var3889=$r18}
; {org.stringtemplate.v4.compiler.BytecodeDisassembler=var10, r1=var2634, i0=var2294, $r0=var2027, r16=var3519, org.stringtemplate.v4.compiler.CompiledST=var3967, $r2=var3942, $r3=var3207, $i1=var1537, $r18=var3889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.BytecodeDisassembler;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r16 = "<bad string index>";	$r2 = r1.<org.stringtemplate.v4.compiler.BytecodeDisassembler: org.stringtemplate.v4.compiler.CompiledST code>;	$r3 = $r2.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String[] strings>;	$i1 = lengthof $r3;	if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 2