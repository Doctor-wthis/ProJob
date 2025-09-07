
package Gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JTextField;

import lib.Numero;

import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class ObispoForm {

	private JFrame frmProjobnumero;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private Numero obj;
	private JLabel lblClaseNumero;
	private JMenuBar menuBar;
	private JMenu mnProcedimientos;
	private JMenu mnFunciones;

	public ObispoForm() {
		Ventana();
		Eso();
	}
	
	private void Eso() {
		obj=new Numero();		
	}
	
	private void Ventana() {
		frmProjobnumero = new JFrame();
		frmProjobnumero.setTitle("ProJob (Numero)");
		
		frmProjobnumero.setBounds(100, 100, 450, 300);
		frmProjobnumero.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmProjobnumero.getContentPane().setLayout(null);
		
		JLabel lblNumero = new JLabel("Numero:");
		lblNumero.setBounds(106, 68, 60, 17);
		frmProjobnumero.getContentPane().add(lblNumero);
		
		textField = new JTextField();
		textField.setBounds(184, 66, 114, 21);
		frmProjobnumero.getContentPane().add(textField);
		textField.setColumns(10);
		
		JLabel lblPosicion = new JLabel("Posicion:");
		lblPosicion.setBounds(106, 111, 60, 17);
		frmProjobnumero.getContentPane().add(lblPosicion);
		
		textField_1 = new JTextField();
		textField_1.setBounds(184, 109, 114, 21);
		frmProjobnumero.getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblDigito = new JLabel("Digito:");
		lblDigito.setBounds(106, 157, 60, 17);
		frmProjobnumero.getContentPane().add(lblDigito);
		
		textField_2 = new JTextField();
		textField_2.setBounds(184, 155, 114, 21);
		frmProjobnumero.getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JLabel lblResultado = new JLabel("Resultado");
		lblResultado.setBounds(184, 207, 114, 17);
		frmProjobnumero.getContentPane().add(lblResultado);
		
		lblClaseNumero = new JLabel("CLASE NUMERO");
		lblClaseNumero.setBounds(169, 24, 100, 30);
		frmProjobnumero.getContentPane().add(lblClaseNumero);
		
		menuBar = new JMenuBar();
		menuBar.setBounds(0, 0, 450, 23);
		frmProjobnumero.getContentPane().add(menuBar);
		
		mnProcedimientos = new JMenu("Procedimientos");
		menuBar.add(mnProcedimientos);
		
		JMenuItem mntmSetValue = new JMenuItem("Set Value");
		mntmSetValue.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				obj.SetValue(Integer.parseInt(textField.getText()));
			}
		});
		mnProcedimientos.add(mntmSetValue);
		
		JMenuItem mntmAnadir = new JMenuItem("Anadir");
		mntmAnadir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				obj.Anadir(Integer.parseInt(textField_2.getText()));
			}
		});
		mnProcedimientos.add(mntmAnadir);
		
		JMenuItem mntmEliminarPosicion = new JMenuItem("Eliminar Posicion");
		mntmEliminarPosicion.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				obj.EliminarPos(Integer.parseInt(textField_1.getText()));
			}
		});
		mnProcedimientos.add(mntmEliminarPosicion);
		
		JMenuItem mntmEliminarDigitos = new JMenuItem("Eliminar Digitos");
		mntmEliminarDigitos.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				obj.EliminarDig(Integer.parseInt(textField_2.getText()));
			}
		});
		mnProcedimientos.add(mntmEliminarDigitos);
		
		mnFunciones = new JMenu("Funciones");
		menuBar.add(mnFunciones);
		
		JMenuItem mntmGetValue = new JMenuItem("Get Value");
		mntmGetValue.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				lblResultado.setText(String.valueOf(obj.GetValue()));
			}
		});
		mnFunciones.add(mntmGetValue);
		
		JMenuItem mntmNumeroDeDigitos = new JMenuItem("Numero de Digitos");
		mntmNumeroDeDigitos.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				lblResultado.setText(String.valueOf(obj.NumDig()));
			}
		});
		mnFunciones.add(mntmNumeroDeDigitos);
	}
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ObispoForm window = new ObispoForm();
					window.frmProjobnumero.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
}
