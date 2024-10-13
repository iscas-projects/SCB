(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var232 0)
(declare-sort var1123 0)
(declare-sort var392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1123_escapeJson/623543802 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun appendFieldStart/587338008 (var392 String String) void)
(declare-fun cast-from-var1117-to-var392 (var1117) var392)
(declare-const null-var1117 var1117)
(declare-const null-String String)
(declare-const var3592 var1117) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var3592 null-var1117)))
(declare-const var2436 String) ; Statement: r2 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2436 null-String)))
(declare-const var2267 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2267 null-String)))
 ; Statement: if r0 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var2267 null-String))) ; Cond: r0 != null 
(define-const var1099 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1099)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1099!1 String)
(assert (= var1099!1 ""))
(assert true)
(define-const var2887 String (append/672562846 var1099!1 "\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1099!2 String)
(assert (= var1099!2 (str.++ var1099!1 "\u0022")))
(define-const var3392 String (var1123_escapeJson/623543802 var2267)) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.StringEscapeUtils: java.lang.String escapeJson(java.lang.String)>(r0) 
(assert true)
(define-const var3835 String (append/672562846 var2887 var3392)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2887!1 String)
(assert (= var2887!1 (str.++ var2887 var3392)))
(assert true)
(define-const var216 String (append/672562846 var3835 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3835!1 String)
(assert (= var3835!1 (str.++ var3835 "\u0022")))
(assert true)
(define-const var140 String (toString/-2075883882 var216)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (appendFieldStart/587338008 (cast-from-var1117-to-var392 var3592) var2436 var140)) ; Statement: specialinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle: void appendFieldStart(java.lang.StringBuffer,java.lang.String)>(r2, $r8) 

(declare-const var3592!1 var1117)
(declare-const var2436!1 String)
(declare-const var140!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1123_escapeJson/623543802=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), appendFieldStart/587338008=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.StringBuffer, java.lang.String], void), cast-from-var1117-to-var392=([org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle], org.apache.commons.lang3.builder.ToStringStyle)}
; {var1117=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var3592=r1, var2436=r2, var2267=r0, var232=null_type, var1099=$r3, var2887=$r5, var1123=org.apache.commons.lang3.StringEscapeUtils, var3392=$r4, var3835=$r6, var216=$r7, var140=$r8, var392=org.apache.commons.lang3.builder.ToStringStyle}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var1117, r1=var3592, r2=var2436, r0=var2267, null_type=var232, $r3=var1099, $r5=var2887, org.apache.commons.lang3.StringEscapeUtils=var1123, $r4=var3392, $r6=var3835, $r7=var216, $r8=var140, org.apache.commons.lang3.builder.ToStringStyle=var392}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r2 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.String;	if r0 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r4 = staticinvoke <org.apache.commons.lang3.StringEscapeUtils: java.lang.String escapeJson(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle: void appendFieldStart(java.lang.StringBuffer,java.lang.String)>(r2, $r8);	return
;block_num 2