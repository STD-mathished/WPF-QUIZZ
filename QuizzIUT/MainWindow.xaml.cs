using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuizzIUT
{
    public partial class MainWindow : Window
    {
        private int count = -1;
        private int correctAnswers = 0;
        private int incorrectAnswers = 0;
        private string[] answers = {"5" ,"2", "3", "2" };
        private string[] questions = {"What is the square root of 25" ,"What is 1+1 ?", "What  2+1", " What is 3-1"};

        public MainWindow()
        {
            InitializeComponent();
            this.Closing += MainWindow_Closing; // add the mainwidowclosing events after closing.

        }

        private void BTNConfirm_Click(object sender, RoutedEventArgs e)
        {
            if (TBXResponse.Text == answers[count])
            {
                MessageBox.Show("Well done !");
                correctAnswers++;
                LBLCorrectAnswersValue.Content = correctAnswers;
            }
            else
            {
                MessageBox.Show($"Unlucky, the answer was {answers[count]}."); // $ gives the ability to input variables
                incorrectAnswers++;
                LBLIncorrectAnswersValue.Content = incorrectAnswers;
            }
            // increment the counter
            NextQuestion();
        }

        private void SDRNightMode_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            // change the color of all the element
            if(SDRNightMode.Value == 1) {
                Background = new SolidColorBrush(Colors.Black);
                LBLQuestion.Foreground = new SolidColorBrush(Colors.White);
                LBLCorrectAnswers.Foreground = new SolidColorBrush(Colors.White);
                LBLIncorrectAnswers.Foreground = new SolidColorBrush(Colors.White);
                LBLCorrectAnswersValue.Foreground = new SolidColorBrush(Colors.White);
                LBLIncorrectAnswersValue.Foreground = new SolidColorBrush(Colors.White);

                LBLTitle.Foreground = new SolidColorBrush(Colors.White);
            }
            else
            {
                Background = new SolidColorBrush(Colors.White);
                LBLQuestion.Foreground = new SolidColorBrush(Colors.Black);
                LBLCorrectAnswers.Foreground = new SolidColorBrush(Colors.Black);
                LBLIncorrectAnswers.Foreground = new SolidColorBrush(Colors.Black);
                LBLCorrectAnswersValue.Foreground = new SolidColorBrush(Colors.Black);
                LBLIncorrectAnswersValue.Foreground = new SolidColorBrush(Colors.Black);

                LBLTitle.Foreground = new SolidColorBrush(Colors.Black);
            }
        }
        private void NextQuestion()
        {
            count ++;
            if(count == questions.Length) { count = 0; }
            LBLQuestion.Content = questions[count];
            TBXResponse.Text = ""; // reset the box, no more placeholder
        }

        private void WNDFenetrePrincipale_Loaded(object sender, RoutedEventArgs e)
        {
            NextQuestion();
        }

        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Do you really want to exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question);     // MessageBoxImgae = the '?' logo that appears before the quesiton

            if (result == MessageBoxResult.No)
            {
                e.Cancel = true;
            }
        }
    

}
}
