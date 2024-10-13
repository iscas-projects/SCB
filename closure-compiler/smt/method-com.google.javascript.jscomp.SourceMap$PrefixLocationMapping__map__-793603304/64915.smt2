(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1657 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-1104953881 (var1657) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun replacement/-1104953881 (var1657) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1657 var1657)
(declare-const null-String String)
(declare-const var1213 var1657) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceMap$PrefixLocationMapping 
(assert (not (= var1213 null-var1657)))
(declare-const var357 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var357 null-String)))
(define-const var3295 String (prefix/-1104953881 var1213)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix> 
(assert true)
(define-const var2321 Bool (startsWith/-1785782452 var357 var3295)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2321 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var615 String (replacement/-1104953881 var1213)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String replacement> 
(define-const var3162 String (prefix/-1104953881 var1213)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix> 
(assert true)
(define-const var2266 Int (length/-134980193 var3162)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert (and true (and (>= var2266 0) (>= (str.len var357) var2266))))
(define-const var167 String (substring/850833817 var357 var2266)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
(define-const var3033 String (str.++ "\u0001\u0001" var615 var167)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-1104953881=([com.google.javascript.jscomp.SourceMap$PrefixLocationMapping], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), replacement/-1104953881=([com.google.javascript.jscomp.SourceMap$PrefixLocationMapping], java.lang.String), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1657=com.google.javascript.jscomp.SourceMap$PrefixLocationMapping, var1213=r1, var357=r0, var2153=null_type, var3295=$r2, var2321=$z0, var615=$r4, var3162=$r3, var2266=$i0, var167=$r5, var3033=$r6}
; {com.google.javascript.jscomp.SourceMap$PrefixLocationMapping=var1657, r1=var1213, r0=var357, null_type=var2153, $r2=var3295, $z0=var2321, $r4=var615, $r3=var3162, $i0=var2266, $r5=var167, $r6=var3033}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceMap$PrefixLocationMapping;	r0 := @parameter0: java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix>;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto return null;	$r4 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String replacement>;	$r3 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix>;	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	return $r6
;block_num 2