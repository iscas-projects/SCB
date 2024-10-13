(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3051 0)
(declare-sort var3879 0)
(declare-sort var818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/1894554303 (var3051) var3879)
(declare-fun getLabel/-1577269915 (var3879) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun arch/1894554303 (var3051) var818)
(declare-fun getLabel/-66966143 (var818) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3051 var3051)
(declare-const var3911 var3051) ; Statement: r1 := @this: org.apache.commons.lang3.arch.Processor 
(assert (not (= var3911 null-var3051)))
(define-const var2753 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2753)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2753!1 String)
(assert (= var2753!1 ""))
(define-const var3036 var3879 (type/1894554303 var3911)) ; Statement: $r2 = r1.<org.apache.commons.lang3.arch.Processor: org.apache.commons.lang3.arch.Processor$Type type> 
(assert true)
(define-const var3616 String (getLabel/-1577269915 var3036)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.commons.lang3.arch.Processor$Type: java.lang.String getLabel()>() 
(assert true)
(define-const var2402 String (append/672562846 var2753!1 var3616)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2753!2 String)
(assert (= var2753!2 (str.++ var2753!1 var3616)))
(assert true)
(define-const var3233 String (append/-1166366385 var2402 32)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2402!1 String)
(assert (str.prefixof var2402 var2402!1))
(define-const var3701 var818 (arch/1894554303 var3911)) ; Statement: $r5 = r1.<org.apache.commons.lang3.arch.Processor: org.apache.commons.lang3.arch.Processor$Arch arch> 
(assert true)
(define-const var3625 String (getLabel/-66966143 var3701)) ; Statement: $r6 = virtualinvoke $r5.<org.apache.commons.lang3.arch.Processor$Arch: java.lang.String getLabel()>() 
(assert true)
;(assert (append/672562846 var3233 var3625)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3233!1 String)
(assert (= var3233!1 (str.++ var3233 var3625)))
(assert true)
(define-const var2978 String (toString/-2075883882 var2753!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/1894554303=([org.apache.commons.lang3.arch.Processor], org.apache.commons.lang3.arch.Processor$Type), getLabel/-1577269915=([org.apache.commons.lang3.arch.Processor$Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), arch/1894554303=([org.apache.commons.lang3.arch.Processor], org.apache.commons.lang3.arch.Processor$Arch), getLabel/-66966143=([org.apache.commons.lang3.arch.Processor$Arch], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3051=org.apache.commons.lang3.arch.Processor, var3911=r1, var2753=$r0, var3879=org.apache.commons.lang3.arch.Processor$Type, var3036=$r2, var3616=$r3, var2402=$r4, var3233=$r7, var818=org.apache.commons.lang3.arch.Processor$Arch, var3701=$r5, var3625=$r6, var2978=$r8}
; {org.apache.commons.lang3.arch.Processor=var3051, r1=var3911, $r0=var2753, org.apache.commons.lang3.arch.Processor$Type=var3879, $r2=var3036, $r3=var3616, $r4=var2402, $r7=var3233, org.apache.commons.lang3.arch.Processor$Arch=var818, $r5=var3701, $r6=var3625, $r8=var2978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.arch.Processor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.commons.lang3.arch.Processor: org.apache.commons.lang3.arch.Processor$Type type>;	$r3 = virtualinvoke $r2.<org.apache.commons.lang3.arch.Processor$Type: java.lang.String getLabel()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = r1.<org.apache.commons.lang3.arch.Processor: org.apache.commons.lang3.arch.Processor$Arch arch>;	$r6 = virtualinvoke $r5.<org.apache.commons.lang3.arch.Processor$Arch: java.lang.String getLabel()>();	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1