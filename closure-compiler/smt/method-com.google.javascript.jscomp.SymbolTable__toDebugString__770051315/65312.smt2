(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort var3997 0)
(declare-sort var810 0)
(declare-sort var3747 0)
(declare-sort var966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-120296891 (var3747) String)
(declare-fun cast-from-var810-to-var3747 (var810) var3747)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getReferences/1064661007 (var1745 var810) var966)
(declare-fun var966_iterator/-693406491 (var966) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1745 var1745)
(declare-const null-String String)
(declare-const null-var810 var810)
(declare-const null-Bool Bool)
(declare-const var1174 var1745) ; Statement: r7 := @this: com.google.javascript.jscomp.SymbolTable 
(assert (not (= var1174 null-var1745)))
(declare-const var913 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var913 null-String)))
(declare-const var3762 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3762 null-String)))
(declare-const var1274 var810) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.SymbolTable$Symbol 
(assert (not (= var1274 null-var810)))
(declare-const var2260 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2260 null-Bool)))
(assert true)
(define-const var302 String (append/672562846 var913 var3762)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 var3762)))
(assert true)
(define-const var3375 String (append/672562846 var302 "\u0027")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var302!1 String)
(assert (= var302!1 (str.++ var302 "\u0027")))
(assert true)
(define-const var3943 String (getName/-120296891 (cast-from-var810-to-var3747 var1274))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>() 
(assert true)
(define-const var2807 String (append/672562846 var3375 var3943)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3375!1 String)
(assert (= var3375!1 (str.++ var3375 var3943)))
(assert true)
;(assert (append/672562846 var2807 "\u0027")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2807!1 String)
(assert (= var2807!1 (str.++ var2807 "\u0027")))
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= (ite var2260 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var913!1 10)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var913!2 String)
(assert (str.prefixof var913!1 var913!2))
(define-const var3912 Int 0) ; Statement: i3 = 0 
(assert true)
(define-const var3791 var966 (getReferences/1064661007 var1174 var1274)) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.jscomp.SymbolTable: java.lang.Iterable getReferences(com.google.javascript.jscomp.SymbolTable$Symbol)>(r3) 
(define-const var2262 Iterator (var966_iterator/-693406491 var3791)) ; Statement: $r22 = interfaceinvoke $r8.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1626 Bool (Iterator_hasNext/-1669924200 var2262)) ; Statement: $z2 = interfaceinvoke $r22.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var1626 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-120296891=([com.google.javascript.rhino.jstype.SimpleSlot], java.lang.String), cast-from-var810-to-var3747=([com.google.javascript.jscomp.SymbolTable$Symbol], com.google.javascript.rhino.jstype.SimpleSlot), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getReferences/1064661007=([com.google.javascript.jscomp.SymbolTable, com.google.javascript.jscomp.SymbolTable$Symbol], java.lang.Iterable), var966_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1745=com.google.javascript.jscomp.SymbolTable, var1174=r7, var913=r0, var3762=r1, var3997=null_type, var810=com.google.javascript.jscomp.SymbolTable$Symbol, var1274=r3, var2260=z0, var302=$r2, var3375=$r5, var3747=com.google.javascript.rhino.jstype.SimpleSlot, var3943=$r4, var2807=$r6, var3912=i3, var966=java.lang.Iterable, var3791=$r8, var2262=$r22, var1626=$z2}
; {com.google.javascript.jscomp.SymbolTable=var1745, r7=var1174, r0=var913, r1=var3762, null_type=var3997, com.google.javascript.jscomp.SymbolTable$Symbol=var810, r3=var1274, z0=var2260, $r2=var302, $r5=var3375, com.google.javascript.rhino.jstype.SimpleSlot=var3747, $r4=var3943, $r6=var2807, i3=var3912, java.lang.Iterable=var966, $r8=var3791, $r22=var2262, $z2=var1626}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.SymbolTable;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: com.google.javascript.jscomp.SymbolTable$Symbol;	z0 := @parameter3: boolean;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	if z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	i3 = 0;	$r8 = virtualinvoke r7.<com.google.javascript.jscomp.SymbolTable: java.lang.Iterable getReferences(com.google.javascript.jscomp.SymbolTable$Symbol)>(r3);	$r22 = interfaceinvoke $r8.<java.lang.Iterable: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r22.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto return;	return
;block_num 4