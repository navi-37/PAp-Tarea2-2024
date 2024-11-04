/**
 * DtUsrModificar.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtUsrModificar  implements java.io.Serializable {
    private publicadores.Barrio barrio;

    private java.lang.String direccion;

    private java.lang.String email;

    private publicadores.EstadoBeneficiario estado;

    private java.util.Calendar fechaNacimiento;

    private java.lang.String nombre;

    private java.lang.String numeroDeLicencia;

    private java.lang.String pw;

    public DtUsrModificar() {
    }

    public DtUsrModificar(
           publicadores.Barrio barrio,
           java.lang.String direccion,
           java.lang.String email,
           publicadores.EstadoBeneficiario estado,
           java.util.Calendar fechaNacimiento,
           java.lang.String nombre,
           java.lang.String numeroDeLicencia,
           java.lang.String pw) {
           this.barrio = barrio;
           this.direccion = direccion;
           this.email = email;
           this.estado = estado;
           this.fechaNacimiento = fechaNacimiento;
           this.nombre = nombre;
           this.numeroDeLicencia = numeroDeLicencia;
           this.pw = pw;
    }


    /**
     * Gets the barrio value for this DtUsrModificar.
     * 
     * @return barrio
     */
    public publicadores.Barrio getBarrio() {
        return barrio;
    }


    /**
     * Sets the barrio value for this DtUsrModificar.
     * 
     * @param barrio
     */
    public void setBarrio(publicadores.Barrio barrio) {
        this.barrio = barrio;
    }


    /**
     * Gets the direccion value for this DtUsrModificar.
     * 
     * @return direccion
     */
    public java.lang.String getDireccion() {
        return direccion;
    }


    /**
     * Sets the direccion value for this DtUsrModificar.
     * 
     * @param direccion
     */
    public void setDireccion(java.lang.String direccion) {
        this.direccion = direccion;
    }


    /**
     * Gets the email value for this DtUsrModificar.
     * 
     * @return email
     */
    public java.lang.String getEmail() {
        return email;
    }


    /**
     * Sets the email value for this DtUsrModificar.
     * 
     * @param email
     */
    public void setEmail(java.lang.String email) {
        this.email = email;
    }


    /**
     * Gets the estado value for this DtUsrModificar.
     * 
     * @return estado
     */
    public publicadores.EstadoBeneficiario getEstado() {
        return estado;
    }


    /**
     * Sets the estado value for this DtUsrModificar.
     * 
     * @param estado
     */
    public void setEstado(publicadores.EstadoBeneficiario estado) {
        this.estado = estado;
    }


    /**
     * Gets the fechaNacimiento value for this DtUsrModificar.
     * 
     * @return fechaNacimiento
     */
    public java.util.Calendar getFechaNacimiento() {
        return fechaNacimiento;
    }


    /**
     * Sets the fechaNacimiento value for this DtUsrModificar.
     * 
     * @param fechaNacimiento
     */
    public void setFechaNacimiento(java.util.Calendar fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }


    /**
     * Gets the nombre value for this DtUsrModificar.
     * 
     * @return nombre
     */
    public java.lang.String getNombre() {
        return nombre;
    }


    /**
     * Sets the nombre value for this DtUsrModificar.
     * 
     * @param nombre
     */
    public void setNombre(java.lang.String nombre) {
        this.nombre = nombre;
    }


    /**
     * Gets the numeroDeLicencia value for this DtUsrModificar.
     * 
     * @return numeroDeLicencia
     */
    public java.lang.String getNumeroDeLicencia() {
        return numeroDeLicencia;
    }


    /**
     * Sets the numeroDeLicencia value for this DtUsrModificar.
     * 
     * @param numeroDeLicencia
     */
    public void setNumeroDeLicencia(java.lang.String numeroDeLicencia) {
        this.numeroDeLicencia = numeroDeLicencia;
    }


    /**
     * Gets the pw value for this DtUsrModificar.
     * 
     * @return pw
     */
    public java.lang.String getPw() {
        return pw;
    }


    /**
     * Sets the pw value for this DtUsrModificar.
     * 
     * @param pw
     */
    public void setPw(java.lang.String pw) {
        this.pw = pw;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtUsrModificar)) return false;
        DtUsrModificar other = (DtUsrModificar) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.barrio==null && other.getBarrio()==null) || 
             (this.barrio!=null &&
              this.barrio.equals(other.getBarrio()))) &&
            ((this.direccion==null && other.getDireccion()==null) || 
             (this.direccion!=null &&
              this.direccion.equals(other.getDireccion()))) &&
            ((this.email==null && other.getEmail()==null) || 
             (this.email!=null &&
              this.email.equals(other.getEmail()))) &&
            ((this.estado==null && other.getEstado()==null) || 
             (this.estado!=null &&
              this.estado.equals(other.getEstado()))) &&
            ((this.fechaNacimiento==null && other.getFechaNacimiento()==null) || 
             (this.fechaNacimiento!=null &&
              this.fechaNacimiento.equals(other.getFechaNacimiento()))) &&
            ((this.nombre==null && other.getNombre()==null) || 
             (this.nombre!=null &&
              this.nombre.equals(other.getNombre()))) &&
            ((this.numeroDeLicencia==null && other.getNumeroDeLicencia()==null) || 
             (this.numeroDeLicencia!=null &&
              this.numeroDeLicencia.equals(other.getNumeroDeLicencia()))) &&
            ((this.pw==null && other.getPw()==null) || 
             (this.pw!=null &&
              this.pw.equals(other.getPw())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getBarrio() != null) {
            _hashCode += getBarrio().hashCode();
        }
        if (getDireccion() != null) {
            _hashCode += getDireccion().hashCode();
        }
        if (getEmail() != null) {
            _hashCode += getEmail().hashCode();
        }
        if (getEstado() != null) {
            _hashCode += getEstado().hashCode();
        }
        if (getFechaNacimiento() != null) {
            _hashCode += getFechaNacimiento().hashCode();
        }
        if (getNombre() != null) {
            _hashCode += getNombre().hashCode();
        }
        if (getNumeroDeLicencia() != null) {
            _hashCode += getNumeroDeLicencia().hashCode();
        }
        if (getPw() != null) {
            _hashCode += getPw().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtUsrModificar.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtUsrModificar"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("barrio");
        elemField.setXmlName(new javax.xml.namespace.QName("", "barrio"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "barrio"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("direccion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "direccion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("email");
        elemField.setXmlName(new javax.xml.namespace.QName("", "email"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("estado");
        elemField.setXmlName(new javax.xml.namespace.QName("", "estado"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "estadoBeneficiario"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaNacimiento");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaNacimiento"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nombre");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nombre"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("numeroDeLicencia");
        elemField.setXmlName(new javax.xml.namespace.QName("", "numeroDeLicencia"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("pw");
        elemField.setXmlName(new javax.xml.namespace.QName("", "pw"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
